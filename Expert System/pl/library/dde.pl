/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(win_dde,
	  [ dde_request/3,		% +Handle, +Key, -Value
	    dde_execute/2,		% +Handle, +Command
	    dde_poke/3,			% +Handle, +Item, +Data
	    dde_register_service/2,	% +Template, +Goal
	    dde_unregister_service/1,	% +Service
	    dde_current_service/2,	% -Service, -Topic
	    dde_current_connection/2	% -Service, -Topic
	  ]).

		 /*******************************
		 *	      CLIENT		*
		 *******************************/

%	Make a DDE request with default timeout value (meaning the request
%	will block VERY long).

dde_request(Handle, Key, Value) :-
	dde_request(Handle, Key, Value, 0).

%	Make a DDE execute request with default timeout value.

dde_execute(Handle, Command) :-
	dde_execute(Handle, Command, 0).

%	Make a DDE poke request with default timeout value.

dde_poke(Handle, Item, Data) :-
	dde_poke(Handle, Item, Data, 0).


		 /*******************************
		 *	      SERVER		*
		 *******************************/

:- dynamic
	dde_service/6,
	dde_current_connection/3.

:- module_transparent
	dde_register_service/2.

%	dde_register_service(+Service(Topic, Item, Value), +Goal).
%	dde_register_service(+Service(Topic, Command), +Goal).
%
%	Register a DDE service satisfied by this SWI-Prolog instance.  The
%	first form is for dde_request/3, the second for dde_execute/2.
%
%	Topic is either an atom or a variable.  In the latter case, any
%	topic is confirmed on the Service.  Item, Value and Command are
%	variables used to pass the arguments into the Goal.

dde_register_service(Template, Goal) :-
	Template =.. [Service, Topic, Item, Value], !,
	'$strip_module'(Goal, Module, PlainGoal),
	'$dde_register_service'(Service, on),
	asserta(win_dde:dde_service(Service, Topic, Item,
				    Value, Module, PlainGoal)).
dde_register_service(Template, Goal) :-
	Template =.. [Service, Topic, Command], !,
	'$strip_module'(Goal, Module, PlainGoal),
	'$dde_register_service'(Service, on),
	asserta(win_dde:dde_service(Service, Topic, -,
				    Command, Module, PlainGoal)).
dde_register_service(Template, _Goal) :-
	throw(error(type_error(dde_service, Template), _)).

dde_unregister_service(Service) :-
	(   retract(dde_service(Service, _, _, _, _, _))
	->  '$dde_register_service'(Service, off)
	;   true
	),
	retractall(dde_service(Service, _, _, _, _, _)).

dde_unregister_all_services :-
	dde_current_service(Service, _),
	dde_unregister_service(Service),
	fail ; true.
	
:- at_halt(dde_unregister_all_services). % required by Windows!

%	dde_current_service(?Service, ?Topic)
%
%	Unifies Service and Topic with currently supported servers/topics

dde_current_service(Service, Topic) :-
	dde_service(Service, Topic, _, _, _, _).

%	dde_current_connection(?Service, ?Topic)
%	
%	Unifies Service and Topic with the currently open server connections.

dde_current_connection(Service, Topic) :-
	dde_current_connection(_, Service, Topic).

		 /*******************************
		 *	    CALL-BACKS		*
		 *******************************/

%	$dde_connect(+Service, +Topic, +IsSelf)
%
%	Called by the DDEML XTYP_CONNECT request.  IsSelf is 0 if the
%	connection is requested by another Prolog, 1 otherwise.

'$dde_connect'(Service, Topic, _Self) :-
	dde_service(Service, Topic, _, _, _, _).

%	$dde_connect_confirm(+Service, +Topic, +Handle)
%
%	Called by the DDEML XTYP_CONNECT_CONFIRM request.  Used to update
%	our list of current conversations.

'$dde_connect_confirm'(Service, Topic, Handle) :-
	asserta(dde_current_connection(Handle, Service, Topic)).

%	$dde_disconnect(+Handle)
%
%	Called by the DDEML XTYP_DISCONNECT request.  Used to update our
%	list of current conversations.

'$dde_disconnect'(Handle) :-
	retractall(dde_current_connection(Handle, _, _)).

%	$dde_request(+Handle, +Topic, +Item, -Answer)
%
%	Called by the DDEML XTYP_REQUEST request.  Answer should be unified
%	with a Prolog object that can be translated into a textual value
%	(atom, string, number or list-of-ascii-values).

'$dde_request'(Handle, Topic, Item, Answer) :-
	dde_current_connection(Handle, Service, Topic),
	dde_service(Service, Topic, Item, Value, Module, Goal), !,
	Module:Goal,
	Answer = Value.
'$dde_request'(_Handle, Topic, _Item, _Answer) :-
	throw(error(existence_error(dde_topic, Topic), _)).

%	$dde_execute(+Handle, +Topic, +Command)
%
%	Called by the DDEML XTYP_EXECUTE request.  Command is a SWI-Prolog
%	string object.  Use string_to_atom or string_to_list to convert it
%	into a standard object.

'$dde_execute'(Handle, Topic, Command) :-
	dde_current_connection(Handle, Service, Topic),
	dde_service(Service, Topic, _, Command, Module, Goal), !,
	Module:Goal.
'$dde_execute'(_Handle, Topic, _Command) :-
	throw(error(existence_error(dde_topic, Topic), _)).

