/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(prolog_debug,
	  [ debug/3,			% +Topic, +Format, +Args
	    debug/1,			% +Topic
	    nodebug/1,			% +Topic
	    debugging/1,		% ?Topic
	    debugging/2,		% ?Topic, ?Bool
	    list_debug_topics/0,

	    assume/1			% +Goal
	  ]).

:- meta_predicate(assume(:)).

:- dynamic
	debugging/2.

%	debugging(?Topic)
%
%	Check whether we are debugging Topic or enumerate the topics we
%	are debugging.

debugging(Topic) :-
	debugging(Topic, true).

%	debug(+Topic)
%	nodebug(+Topic)
%
%	Add/remove a topic from being printed.  nodebug(_) removes all
%	topics.

debug(Topic) :-
	(   (   retract(debugging(Topic, _))
	    *-> assert(debugging(Topic, true)),
		fail
	    ;   assert(debugging(Topic, true))
	    )
	->  true
	;   true
	).
nodebug(Topic) :-
	(   (   retract(debugging(Topic, _))
	    *-> assert(debugging(Topic, false)),
		fail
	    ;   assert(debugging(Topic, false))
	    )
	->  true
	;   true
	).

%	debug_topic(+Topic)
%
%	Declare a topic for debugging.  This can be used to find all
%	topics available for debugging.

debug_topic(Topic) :-
	(   debugging(Registered, _),
	    Registered =@= Topic
	->  true
	;   assert(debugging(Topic, false))
	).

%	list_debug_topics
%	
%	List currently known debug topics and their setting.

list_debug_topics :-
	format(user_error, '~*t~40|~n', "-"),
	format(user_error, '~w~t~30| ~w~n', ['Debug Topic', 'Activated']),
	format(user_error, '~*t~40|~n', "-"),
	(   debugging(Topic, Value),
	    format(user_error, '~w~t~30| ~w~n', [Topic, Value]),
	    fail
	;   true
	).

%	debug(+Topic, +Format, +Args)
%
%	As format/3 to user_error, but only does something if Topic
%	is activated through debug/1.

debug(Topic, Format, Args) :-
	debugging(Topic, true), !,
	print_message(informational, format(Format, Args)).
debug(_, _, _).


		 /*******************************
		 *	      ASSUME		*
		 *******************************/

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Assume is like C assert().  Currently  we   trap  the  tracer.  In later
versions we may employ goal_expansion to provide source-information.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

assume(G) :-
	\+ \+ G, !.			% avoid binding variables
assume(G) :-
	print_message(error, assumption_failed(G)),
	trace,
	assumption_failed.

assumption_failed.


		 /*******************************
		 *	     EXPANSION		*
		 *******************************/

:- multifile
	user:goal_expansion/2.

user:goal_expansion(debug(Topic,_,_), true) :-
	(   current_prolog_flag(optimise, true)
	->  true
	;   debug_topic(Topic),
	    fail
	).
user:goal_expansion((debugging(Topic) -> _ ; true), true) :-
	(   current_prolog_flag(optimise, true)
	->  true
	;   debug_topic(Topic),
	    fail
	).
user:goal_expansion(assume(G), Goal) :-
	(   current_prolog_flag(optimise, true)
	->  Goal = true
	;   expand_goal(G, G2),
	    Goal = assume(G2)
	).


		 /*******************************
		 *	      MESSAGES		*
		 *******************************/

:- multifile
	prolog:message/3.

prolog:message(assumption_failed(G)) -->
	[ 'Assumption failed: ~p'-[G] ].
