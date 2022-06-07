/* Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(swi_option,
	  [ option/3			% +Term, +List, +Default
	  ]).

%	option(Option(?Value), +OptionList, +Default)
%
%	Get an option from a OptionList. OptionList can use the
%	Name=Value as well as the Name(Value) convention.

option(Opt, Options) :-
	memberchk(Opt, Options), !.
option(Opt, Options) :-
	functor(Opt, OptName, 1),
	arg(1, Opt, OptVal),
	memberchk(OptName=OptVal, Options), !.

option(Opt, Options, _) :-
	option(Opt, Options), !.
option(Opt, _, Default) :-
	arg(1, Opt, Default).
