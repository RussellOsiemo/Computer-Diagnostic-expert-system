/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(cgi,
	  [ cgi_get_form/1		% -ListOf Name(Value)
	  ]).
:- use_module(library(shlib)).

:- initialization
   load_foreign_library(foreign(cgi), install_cgi).
