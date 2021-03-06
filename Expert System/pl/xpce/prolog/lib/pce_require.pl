/*  $Id: pce_require.pl,v 1.18 2002/02/01 15:04:49 jan Exp $

    Part of XPCE --- The SWI-Prolog GUI toolkit

    Author:        Jan Wielemaker and Anjo Anjewierden
    E-mail:        jan@swi.psy.uva.nl
    WWW:           http://www.swi.psy.uva.nl/projects/xpce/
    Copyright (C): 1985-2002, University of Amsterdam

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

    As a special exception, if you link this library with other files,
    compiled with a Free Software compiler, to produce an executable, this
    library does not by itself cause the resulting executable to be covered
    by the GNU General Public License. This exception does not however
    invalidate any other reasons why the executable file might be covered by
    the GNU General Public License.
*/

:- module(pce_require,
	  [ pce_require/1		% file
	  , pce_require/3		% file x directive x message
	  ]).

:- use_module(library(pce)).
:- require([ absolute_file_name/3
	   , append/3
	   , forall/2
	   , ignore/1
	   , is_list/1
	   , member/2
	   , pce_error/1
	   , sformat/3
	   ]).

target_prolog(common).			% Common between QP 3.2 and SICStus 3

:- dynamic
	called/1,			% called head
	defined/1,			% defined head
	output_to/2,			% output is emacs buffer
	current_require_declaration/1.	% Current declaration

		 /*******************************
		 *	     BUILT-INS		*
		 *******************************/

:- use_module(library('xref/common')).	% Common built-in's

system_predicate(require(_)).
system_predicate(discontiguous(_)).
system_predicate(Head) :-
	built_in(Head).


		/********************************
		*            TOPLEVEL		*
		********************************/

pce_require(File) :-
	clean,
	collect(File),
	report.


pce_require(File, Directive, Message) :-
	new(D, string),
	new(M, string),
	asserta(output_to(D, M), Clause),
	pce_require(File),
	erase(Clause),
	get(D, value, Directive),
	get(M, value, Message).


clean :-
	retractall(called(_)),
	retractall(defined(_)),
	retractall(current_require_declaration(_)).
	

collect(File) :-
	find_source_file(File, Source),
	seeing(Old), see(Source),
	repeat,
	    catch(read(Term), E,
		  (   print_message(error, E),
		      fail
		  )),
	    req_expand(Term, T),
	    (   T == end_of_file
	    ->  !, seen, see(Old)
	    ;   process(T),
		fail
	    ).


		 /*******************************
		 *	     EXPANSION		*
		 *******************************/

%	req_expand(+Term, -Expanded)
%
%	Do the term-expansion.  We have to pass require as we need it
%	for validation.  Otherwise we do term-expansion, handling all
%	of the XPCE class compiler as normal Prolog afterwards.

req_expand((:- require(X)), (:- require(X))) :- !.
req_expand(Term, _) :-
	requires_library(Term, Lib),
	ensure_loaded(user:Lib),
	fail.
req_expand(Term, T) :-
	expand_term(Term, Expanded),
	(   is_list(Expanded)
	->  member(T, Expanded)
	;   T = Expanded
	).


%	requires_library(+Term, -Library)
%
%	known expansion hooks.  Should be more dynamic!

requires_library((:- emacs_begin_mode(_,_,_,_,_)), library(emacs_extend)).
requires_library((:- draw_begin_shape(_,_,_,_)), library(pcedraw)).


		 /*******************************
		 *	     PROCESS		*
		 *******************************/

process((:- Directive)) :- !,
	process_directive(Directive), !.
process((Head :- Body)) :- !,
	assert_defined(Head),
	process_body(Body).
process('$source_location'(_File, _Line):Clause) :- !,
	process(Clause).
process(Head) :-
	assert_defined(Head).

		/********************************
		 *           DIRECTIVES		*
		 ********************************/

process_directive(List) :-
	is_list(List), !,
	process_directive(consult(List)).
process_directive(use_module(_Module, Import)) :-
	assert_import(Import).
process_directive(require(Import)) :-		 % Include if report only
	assert_current_require_declaration(Import).
process_directive(use_module(Modules)) :-
	process_use_module(Modules).
process_directive(consult(Modules)) :-
	process_use_module(Modules).
process_directive(ensure_loaded(Modules)) :-
	process_use_module(Modules).
process_directive(dynamic(Dynamic)) :-
	assert_dynamic(Dynamic).

process_directive(op(P, A, N)) :-
	op(P, A, N).			% should be local ...
process_directive(pce_expansion:push_compile_operators) :-
	pce_expansion:push_compile_operators.
process_directive(pce_expansion:pop_compile_operators) :-
	pce_expansion:pop_compile_operators.
process_directive(Goal) :-
	process_body(Goal).


	      /********************************
	      *             BODY		*
	      ********************************/

meta_goal((A, B), 		[A, B]).
meta_goal((A; B), 		[A, B]).
meta_goal((A| B), 		[A, B]).
meta_goal((A -> B),		[A, B]).
meta_goal(findall(_V, G, _L),	[G]).
meta_goal(setof(_V, G, _L),	[G]).
meta_goal(bagof(_V, G, _L),	[G]).
meta_goal(forall(A, B),		[A, B]).
meta_goal(maplist(G, _L1, _L2),	[G+2]).
meta_goal(checklist(G, _L),	[G+1]).
meta_goal(call(G),		[G]).
meta_goal(call(G, _A1),		[G+1]).
meta_goal(call(G, _A1, _A2),	[G+2]).
meta_goal(not(G),		[G]).
meta_goal(\+(G),		[G]).
meta_goal(ignore(G),		[G]).
meta_goal(once(G),		[G]).
meta_goal(initialization(G),	[G]).

meta_goal(ifmaintainer(G),	[G]).	% used in manual

process_body(Goal) :-
	meta_goal(Goal, Metas), !,
	assert_called(Goal),
	process_called_list(Metas).
process_body(Goal) :-
	assert_called(Goal),
	ignore(check_goal(Goal)).

process_called_list([]).
process_called_list([H|T]) :-
	process_meta(H),
	process_called_list(T).

process_meta(A+N) :- !,
	nonvar(A),
	\+ A = _:_,
	A =.. List,
	length(Rest, N),
	append(List, Rest, NList),
	Term =.. NList,
	process_body(Term).
process_meta(G) :-
	process_body(G).


		/********************************
		*           CHECKING		*
		********************************/

check_goal(Goal) :-
	send_list_goal(Goal),
	output_compatibility('Send/[2,3] used with list argument').

send_list_goal(Goal) :-
	(   Goal = send(A, B)
	;   Goal = send(A, B, C)
	),
	member(X, [A,B,C]),
	nonvar(X),
	X = [_|_], !.


		/********************************
		*       INCLUDED MODULES	*
		********************************/

process_use_module(_Module:_Files) :- !. % loaded in another module
process_use_module([]) :- !.
process_use_module([H|T]) :- !,
	process_use_module(H),
	process_use_module(T).
process_use_module(library(pce)) :- !,	% bit special
	file_public_list(library(pce), Public),
	forall(member(Name/Arity, Public),
	       (   functor(Term, Name, Arity),
		   \+ system_predicate(Term),
		   \+ Term = pce_error(_) % hack!?
	       ->  assert_defined(Term)
	       ;   true
	       )).
process_use_module(File) :-
	(   file_public_list(File, Public)
	->  assert_import(Public)
	;   true
	).

file_public_list(File, Public) :-
	find_source_file(File, Source),
	seeing(Old), see(Source),
	read(ModuleDecl),
	seen, see(Old),
	ModuleDecl = (:- module(_, Public)).


		/********************************
		*       PHASE 1 ASSERTIONS	*
		********************************/

assert_called(Var) :-
	var(Var), !.
assert_called(Goal) :-
	called(Goal), !.
assert_called(Goal) :-
	functor(Goal, Name, Arity),
	functor(Term, Name, Arity),
	asserta(called(Term)).

assert_defined(_Module:_Head) :- !.	% defining in another module.  Bah!
assert_defined(Goal) :-
	defined(Goal), !.
assert_defined(Goal) :-
	functor(Goal, Name, Arity),
	functor(Term, Name, Arity),
	check_system_predicate(Term),
	asserta(defined(Term)).

assert_import([]) :- !.
assert_import([H|T]) :-
	assert_import(H),
	assert_import(T).
assert_import(Name/Arity) :-
	functor(Term, Name, Arity),
	assert_defined(Term).

assert_dynamic((A, B)) :- !,
	assert_dynamic(A),
	assert_dynamic(B).
assert_dynamic(Name/Arity) :-
	functor(Term, Name, Arity),
	assert_defined(Term).


assert_current_require_declaration([]).
assert_current_require_declaration([Name/Arity|Rest]) :-
	functor(Head, Name, Arity),
	assert(current_require_declaration(Head)),
	assert_current_require_declaration(Rest).
				   
check_system_predicate(Head) :-
	system_predicate(Head), !,
	functor(Head, Name, Arity),
	target_prolog(Prolog),
	source_warning('Redefined ~w system predicate: ~w/~d',
		       [Prolog, Name, Arity]).
pce_ifhostproperty(prolog(swi),
(check_system_predicate(Head) :-
	predicate_property(system:Head, system_predicate), !,
	functor(Head, Name, Arity),
	Prolog = 'SWI-Prolog',
	source_warning('Redefined ~w system predicate: ~w/~d',
		       [Prolog, Name, Arity]))).
check_system_predicate(_).

		/********************************
		*             REPORT		*
		********************************/

undefined(Head) :-
	defined(Head), !, fail.
undefined(Head) :-
	system_predicate(Head), !, fail.
undefined(_).

report :-
	findall(Head, (called(Head), undefined(Head)), U0),
	sort(U0, Undefined),		% remove duplicates
	(   forall(member(U, Undefined), current_require_declaration(U)),
	    forall(current_require_declaration(U), member(U, Undefined))
	->  message(':- require/1: up-to-date')
	;   output(':- require([ '),
	    report_undefined(Undefined),
	    output(']).~n')
	).


report_undefined([]).
report_undefined([L]) :- !,
	functor(L, Name, Arity),
	report_name_arity(Name, Arity),
	output('~n	   ', []).
report_undefined([H|T]) :-
	functor(H, Name, Arity),
	report_name_arity(Name, Arity),
	output('~n	   , ', []),
	report_undefined(T).

report_name_arity(Name, Arity) :-
	current_op(P, _, Name),
	P >= 1000, !,
	output('(~q)/~d', [Name, Arity]).
report_name_arity(Name, Arity) :-
	output('~q', [Name/Arity]).


		/********************************
		*            UTILITIES		*
		********************************/

%	find_source_file(+Spec, -File)
%	Find named source file.

find_source_file(Spec, File) :-
	do_find_source_file(Spec, File), !.
find_source_file(Spec, _) :-
	source_warning('Cannot file from ~w', [Spec]),
	fail.

do_find_source_file(Spec, File) :-
	absolute_file_name(Spec,
			   [ file_type(prolog),
			     access(read),
			     file_errors(fail)
			   ], File), !.


		/********************************
		*            OUTPUT		*
		********************************/

to_string(Prolog, string(Prolog)) :-
	is_list(Prolog), !.
to_string(Atomic, Atomic).

output(Fmt) :-
	output(Fmt, []).
output(Fmt, Args) :-
	output_to(D, _), D \== @nil, !,
	sformat(Buf, Fmt, Args),
	to_string(Buf, String),
	send(D, append, String).
output(Fmt, Args) :-
	format(Fmt, Args).


message(Fmt) :-
	message(Fmt, []).
message(Fmt, Args) :-
	output_to(_, Msg), Msg \== @nil, !,
	sformat(Buf, Fmt, Args),
	to_string(Buf, String),
	send(Msg, append, String).
message(Fmt, Args) :-
	format(user_error, Fmt, Args),
	format(user_error, '~n', []).


output_compatibility(Fmt) :-
	output_compatibility(Fmt, []).
output_compatibility(Fmt, Args) :-
	source_warning(Fmt, Args).

source_warning(Fmt, Args) :-
	pce_error(preformatted(Fmt, Args)).
