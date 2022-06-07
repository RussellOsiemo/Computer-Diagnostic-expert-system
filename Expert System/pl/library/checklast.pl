/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(checklast,
	  [ check_old_last/0
	  ]).
:- use_module(library(lists)).


/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
This module simplifies porting < 5.1.11   applications using last/2 with
the wrong argument order to >=  5.1.12.   For  further discussion on the
argument order of last/2, see

http://www.prolog-standard.fmg.uva.nl/twiki/bin/view/Library/PredLast2
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

check_old_last :-
	print_message(informational, last_check).

user:goal_expansion(last(L,E), _) :-
	print_message(warning, last_arguments(last(L,E))),
	fail.

		 /*******************************
		 *	CHECKING VERSION	*
		 *******************************/

:- abolish(lists:last/2).

%	last(?List, ?Elem)
%
%	Succeeds if `Last' unifies with the last element of `List'.

lists:last(List, Last) :-
	\+ is_list(List), !,
	print_message(error, last_call(last_call(List, Last))),
	trace,
	fail.
lists:last([X|Xs], Last) :-
	last_(Xs, X, Last).

last_([], Last, Last).
last_([X|Xs], _, Last) :-
	last_(Xs, X, Last).


		 /*******************************
		 *	     MESSAGES		*
		 *******************************/

:- multifile
	prolog:message/3.

prolog:message(last_check) -->
	[ 'Enabled checking for wrong argument order in last/2' ].
prolog:message(last_arguments(S)) -->
	{ numbervars(S, 0, _)
	},
	[ 'Last/2 used; check argument order: ~p'-[S] ].
prolog:message(last_call(S)) -->
	[ 'Suspicious last/2 call, entering debugger: ~p'-[S] ].

