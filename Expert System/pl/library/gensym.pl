/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(gensym,
	[ reset_gensym/0,
	  reset_gensym/1,
	  gensym/2
	]).

:- style_check(+dollar).		% lock these predicates

%	gensym(+Base, -Unique)
%
%	Generate <Base>0, <Base>1, etc atoms on each subsequent call.

gensym(Base, Atom) :-
	atom_concat($gs_, Base, Key), 
	with_mutex('$gensym', increment_key(Key, N)),
	atom_concat(Base, N, Atom).

increment_key(Key, New) :-
	flag(Key, Old, Old), 
	record_gensym(Key, Old),
	succ(Old, New), 
	flag(Key, _, New). 

record_gensym(Key, 0) :- !,
	recordz($gensym, Key).
record_gensym(_, _).

%	reset_gensym/0
%
%	Reset all gensym counters.  Please beware this is dangerous: gensym
%	may be in use by other modules that do not expect their counter to
%	be reset!

reset_gensym :-
	with_mutex('$gensym', do_reset_gensym).

do_reset_gensym :-
	(   recorded($gensym, Key, Ref),
	    erase(Ref),
	    flag(Key, _, 0),
	    fail
	;   true
	).

%	reset_gensym(+Base)
%
%	Reset a specific gensym counter.  Please beware this still is
%	dangerous as other code may use gensym with the same atom!

reset_gensym(Base) :-
	atom_concat($gs_, Base, Key), 
	with_mutex('$gensym', flag(Key, _, 0)).
