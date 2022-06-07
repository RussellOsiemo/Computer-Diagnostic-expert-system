/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(occurs,
	  [ contains_term/2,		% +SubTerm, +Term
	    contains_var/2,		% +SubTerm, +Term
	    free_of_term/2,		% +SubTerm, +Term
	    free_of_var/2,		% +SubTerm, +Term
	    occurrences_of_term/3,	% +SubTerm, +Term, ?Tally
	    occurrences_of_var/3,	% +SubTerm, +Term, ?Tally
	    sub_term/2,			% -SubTerm, +Term
	    sub_var/2			% -SubTerm, +Term (SWI extra)
	  ]).

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
This  is  a  SWI-Prolog  implementation  of  the  corresponding  Quintus
library, based on the generalised arg/3 predicate of SWI-Prolog.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

%	contains_term(+Sub, +Term)
%
%	Succeeds if Sub is contained in Term (=, deterministically)

contains_term(X, X) :- !.
contains_term(X, Term) :-
	compound(Term),
	arg(_, Term, Arg),
	contains_term(X, Arg).


%	contains_var(+Sub, +Term)
%
%	Succeeds if Sub is contained in Term (==, deterministically)

contains_var(X0, X1) :-
	X0 == X1, !.
contains_var(X, Term) :-
	compound(Term),
	arg(_, Term, Arg),
	contains_var(X, Arg).

%	free_of_term(+Sub, +Term)
%
%	Succeeds of Sub does not unify to any subterm of Term

free_of_term(Sub, Term) :-
	\+ contains_term(Sub, Term).

%	free_of_var(+Sub, +Term)
%
%	Succeeds of Sub is not equal (==) to any subterm of Term

free_of_var(Sub, Term) :-
	\+ contains_var(Sub, Term).

%	occurrences_of_term(+SubTerm, +Term, ?Count)
%
%	Count the number of SubTerms in Term

occurrences_of_term(Sub, Term, Count) :-
	count(sub_term(Sub, Term), Count).

%	occurrences_of_var(+SubTerm, +Term, ?Count)
%
%	Count the number of SubTerms in Term

occurrences_of_var(Sub, Term, Count) :-
	count(sub_var(Sub, Term), Count).

%	sub_term(-Sub, +Term)
%
%	Generates (on backtracking) all subterms of Term.

sub_term(X, X).
sub_term(X, Term) :-
	compound(Term),
	arg(_, Term, Arg),
	sub_term(X, Arg).

%	sub_var(-Sub, +Term)
%
%	Generates (on backtracking) all subterms (==) of Term.

sub_var(X0, X1) :-
	X0 == X1.
sub_var(X, Term) :-
	compound(Term),
	arg(_, Term, Arg),
	sub_var(X, Arg).


		 /*******************************
		 *		UTIL		*
		 *******************************/

%	count(+Goal, -Count)
%
%	Count number of times Goal succeeds.

count(Goal, Count) :-
	flag('$occurs_count', Old, 0),
	(   Goal,
	    flag('$occurs_count', X, X+1),
	    fail
	;   flag('$occurs_count', Count0, Old)
	),
	Count0 = Count.

