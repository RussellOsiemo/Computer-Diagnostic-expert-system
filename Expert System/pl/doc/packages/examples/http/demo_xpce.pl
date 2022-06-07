/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Sciece
*/

:- use_module(library('http/xpce_httpd')).
:- use_module(demo_body).

server(Port) :-
	http_server(reply,
		    [ port(Port)
		    ]).


