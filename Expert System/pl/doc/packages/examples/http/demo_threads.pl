/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Sciece
*/

:- load_files([ demo_body,
		library('http/thread_httpd')
	      ],
	      [ silent(true)
	      ]).

server :-
	server(3000, []).

server(Port, Options) :-
	http_server(reply,
		    [ port(Port),
		      timeout(20)
		    | Options
		    ]).

tm :-
	prolog_ide(thread_monitor).
