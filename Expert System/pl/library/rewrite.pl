/*  $Id: rewrite.pl,v 1.3 2002/11/01 09:17:06 jan Exp $

    Part of XPCE
    Designed and implemented by Anjo Anjewierden and Jan Wielemaker
    E-mail: jan@swi.psy.uva.nl

    Copyright (C) 2000 University of Amsterdam. All rights reserved.
*/

:- module(rewrite,
	  [ rewrite/2,			% +Rule, +Input
	    rew_term_expansion/2,
	    rew_goal_expansion/2
	  ]).
:- use_module(library(quintus)).

:- meta_predicate
	rewrite(:, +).
:- op(1200, xfx, user:(::=)).


		 /*******************************
		 *	    COMPILATION		*
		 *******************************/

rew_term_expansion((Rule ::= RuleBody), (Head :- Body)) :-
	translate(RuleBody, Term, Body0),
	simplify(Body0, Body),
	Rule =.. List,
	append(List, [Term], L2),
	Head =.. L2.

rew_goal_expansion(rewrite(To, From), Goal) :-
	nonvar(To),
	To = \Rule,
	compound(Rule),
	Rule =.. List,
	append(List, [From], List2),
	Goal =.. List2.


		 /*******************************
		 *	      TOPLEVEL		*
		 *******************************/

%	rewrite(?To, +From)
%
%	Invoke the term-rewriting system

rewrite(To, From) :-
	'$strip_module'(To, M, T),
	(   var(T)
	->  From = T
	;   T = \Rule
	->  call(M:Rule, From)
	;   match(To, M, From)
	).

match(Rule, M, From) :-
	translate(Rule, From, Code),
	M:Code.

translate(Var, Var, true) :-
	var(Var), !.
translate((\Command, !), Var, (Goal, !)) :- !,
	(   callable(Command),
	    Command =.. List
	->  append(List, [Var], L2),
	    Goal =.. L2
	;   Goal = rewrite(\Command, Var)
	).
translate(\Command, Var, Goal) :- !,
	(   callable(Command),
	    Command =.. List
	->  append(List, [Var], L2),
	    Goal =.. L2
	;   Goal = rewrite(\Command, Var)
	).
translate(Atomic, Atomic, true) :-
	atomic(Atomic), !.
translate(C, _, Cmd) :-
	command(C, Cmd), !.
translate((A, B), T, Code) :-
	(   command(A, Cmd)
	->  !, translate(B, T, C),
	    Code = (Cmd, C)
	;   command(B, Cmd)
	->  !, translate(A, T, C),
	    Code = (C, Cmd)
	).
translate(Term0, Term, Command) :-
	functor(Term0, Name, Arity),
	functor(Term, Name, Arity),
	translate_args(0, Arity, Term0, Term, Command).

translate_args(N, N, _, _, true) :- !.
translate_args(I0, Arity, T0, T1, (C0,C)) :-
	I is I0 + 1, 
	arg(I, T0, A0),
	arg(I, T1, A1),
	translate(A0, A1, C0),
	translate_args(I, Arity, T0, T1, C).

command(0, _) :- !,			% catch variables
	fail.
command({A}, A).
command(!, !).

		 /*******************************
		 *	      SIMPLIFY		*
		 *******************************/

%	simplify(+Raw, -Simplified)
%
%	Get rid of redundant `true' goals generated by translate/3.

simplify(V, V) :-
	var(V), !.
simplify((A0,B), A) :-
	B == true, !,
	simplify(A0, A).
simplify((A,B0), B) :-
	A == true, !,
	simplify(B0, B).
simplify((A0, B0), C) :- !,
	simplify(A0, A),
	simplify(B0, B),
	(   (   A \== A0
	    ;	B \== B0
	    )
	->  simplify((A,B), C)
	;   C = (A,B)
	).
simplify(X, X).
