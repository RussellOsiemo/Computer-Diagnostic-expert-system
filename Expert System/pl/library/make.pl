/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(make,
	  [ make/0
	  ]).
:- use_module(library(check)).

:- system_module.


		/********************************
		*              MAKE             *
		*********************************/

%	make/0
%	
%	Reload all source files that have been changed since they were
%	loaded.

make :-
	$update_library_index,
	findall(File, modified_file(File), Reload),
	print_message(silent, make(reload(Reload))),
	reload(Reload),
	print_message(silent, make(done)),
	list_undefined.

modified_file(File) :-
	$time_source_file(File, LoadTime),
	time_file(File, Modified),
	Modified > LoadTime.

reload([]).
reload([H|T]) :-
	reload_file(H),
	reload(T).

%	reload_file(File)
%
%	Reload file into the proper module.  Note that if the file is loaded
%	into multiple modules this should be handled more carefully.

reload_file(File) :-
	findall(Context, $load_context_module(File, Context), Modules),
	(   Modules = []
	->  consult(user:File)
	;   Modules = [Module]
	->  consult(Module:File)
	;   Modules = [First|_Rest],
	    consult(First:File)
	).
	
