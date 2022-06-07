/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(memory_file,
	  [ new_memory_file/1,		% -Handle
	    free_memory_file/1,		% +Handle
	    size_memory_file/2,		% +Handle, -Size
	    open_memory_file/3,		% +Handle, +Mode, -Stream
	    atom_to_memory_file/2,	% +Atom, -Handle
	    memory_file_to_atom/2,	% +Handle, -Atom
	    memory_file_to_codes/2	% +Handle, -CodeList
	  ]).
:- initialization(load_foreign_library(foreign(memfile))).
