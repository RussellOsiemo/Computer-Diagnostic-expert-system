/* Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Sciece
*/

:- module(demo_body,
	  [ reply/1
	  ]).
:- use_module(library('http/http_client')).
:- use_module(library('http/http_image')).		% make XPCE generate images


:- style_check(-atom).			% allow long atoms

reply(_) :-
	flag(request, N, N+1),
	fail.
reply(Request) :-
	member(method(post), Request), !,
	http_read_data(Request, Data, []),
	format('Content-type: text/plain~n~n', []),
	flag(request, RN, RN),
	format('Request ~d~n', [RN]),
	pp(Request),
	format('~nData~n'),
	pp(Data).

reply(Request) :-
	member(path('/quit'), Request), !,
	format('Connection: close~n', []),
	format('Content-type: text/html~n~n', []),
	format('Bye Bye~n').
reply(Request) :-
	member(path('/box'), Request), !,
	send(@prolog, call, pce_reply(Request)).
reply(Request) :-
	member(path('/env'), Request), !,
	expand_file_name(~, Home),
	format('Content-type: text/html~n~n', []),
	format('<html>~n', []),
	flag(request, RN, RN),
	format('Request ~d~n', [RN]),
	format('<pre>~n', []),
	format('HOME = ~w~n~n', [Home]),
	open(pipe(printenv), read, Fd),
	copy_stream_data(Fd, current_output),
	close(Fd),
	format('</pre>~n', []),
	format('</htmp>~n', []).
reply(Request) :-
	member(path('/xml'), Request), !,
	format('Content-type: text/xml~n~n', []),
	format('\
<message>
  <head>
  <from>Jan Wielemaker</from>
  <to>Prolog users</to>
  <subject>The SWI-Prolog web-server</subject>
  </head>
  <body>
<p>
This is the first demo of the web-server serving an XML message
</p>
  </body>
</message>
', []).
reply(Request) :-
	member(path('/work'), Request),
	format(user_error, 'Starting work ...', []),
	forall(between(1, 10000000, _), atom_codes(_, "hello")),
	format(user_error, 'done!~n', []),
	format('Content-type: text/plain~n~n', []),
	format('ok~n').
reply(Request) :-
	format('Content-type: text/html~n~n', []),
	format('<html>~n', []),
	format('<table border=1>~n'),
	print_request(Request),
	format('~n</table>~n'),
	format('</html>~n', []).


print_request([]).
print_request([H|T]) :-
	H =.. [Name, Value],
	format('<tr><td>~w<td>~w~n', [Name, Value]),
	print_request(T).


		 /*******************************
		 *     PCE BASED REQUESTS	*
		 *******************************/

pce_reply(Request) :-
	memberchk(search(Search), Request),
	memberchk(class=box, Search),
	new(Box, box(200,200)),
	send(Box, radius, 20),
	send(Box, fill_pattern, colour(skyblue)),
	reply_image(Box, []).
	
	

