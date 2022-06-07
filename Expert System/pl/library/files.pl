/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(files,
	[ can_open_file/2,
	  chdir/1
	]).

%	can_open_file(+Path, +Mode)
%	Succeeds if the user has access to `File' in mode `Mode'.  Fails
%	silently if this is not the  case.   `Mode'  is  one  of  {read,
%	write, both}.  This used to be difficult.  Since we have
%	access_file/2 it is merely a Quintus compatibility predicate
%	and should be in quintus.pl.  We will leave it here for compatibility
%	reasons.

can_open_file(File, read) :- !,
	access_file(File, read).
can_open_file(File, write) :- !,
	(   exists_file(File)
	->  access_file(File, write)
        ;   path_dir_name(File, Dir),
	    access_file(Dir, write)
	).
can_open_file(File, both) :-
	access_file(File, read),
	access_file(File, write).

path_dir_name(File, Dir) :-
	file_base_name(File, Base),
	atom_concat(RawDir, Base, File),
	(   RawDir == ''
	->  Dir = '.'
	;   Dir = RawDir
	).

%	chdir(+Dir)
%
%	Change Working Directory.  New code should be using working_directory/2.

chdir(Dir) :-
	working_directory(_Old, Dir).
