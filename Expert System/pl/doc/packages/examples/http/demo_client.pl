/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Sciece
*/

:- use_module(library('http/http_client')).
:- use_module(library(debug)).
:- use_module(library('http/http_sgml_plugin')).


%	stress(+Times, +Threads, +URLOrAlias)
%	
%	Typical use: stress(1000, 3, 1): run the test 1000 times with
%	3 client threads on the /xml test from demo_body.pl and verify
%	the parsed result.

stress(Times, Parallel, Alias) :-
	answer(Alias, URL, _), !,
	stress(Times, Parallel, URL).
stress(Times, Parallel, URL) :-
	(   pool(pool, _)
	->  delete_pool(pool)
	;   true
	),
	create_pool(pool, Parallel),
	stress(Times, URL),
	wait_done(Times),
	delete_pool(pool).

wait_done(0) :- !.
wait_done(N) :-
	thread_get_message(done, Result),
	put(Result), flush,
	N1 is N - 1,
	wait_done(N1).
	
stress(0, _) :- !.
stress(N, URL) :-
	thread_send_message(pool, stress_url(URL)),
	NN is N - 1,
	stress(NN, URL).

stress_url(URL) :-
	thread_self(Me),
	atom_number(N, Me),
	(   catch(http_get(URL, X, [connection(close)]), E, true)
	->  (   var(E)
	    ->	(   answer(_, URL, Correct)
		->  (   X == Correct
		    ->  thread_send_message(done, N)
		    ;   thread_send_message(done, !)
		    )
		;   thread_send_message(done, ?)
		)
	    ;	print_message(error, E),
		thread_send_message(done, 'E')
	    )
	;   thread_send_message(done, -)
	).

:- dynamic
	pool/2.				% name, threads

create_pool(Name, N) :-
	message_queue_create(Name),
	findall(Id, (between(1, N, _),
		     thread_create(worker(Name), Id, [])), Threads),
	assert(pool(Name, Threads)).
	

delete_pool(Name) :-
	pool(Name, Threads),
	forall(member(_, Threads), thread_send_message(Name, thread_exit(ok))),
	forall(member(Id, Threads), thread_join(Id, _)),
	message_queue_destroy(Name),
	retract(pool(Name, Threads)).





worker(Queue) :-
	repeat,
	  thread_get_message(Queue, Goal),
	  (   catch(Goal, E, true)
	  ->  (   var(E)
	      ->  true
	      ;   print_message(error, E)
	      )
	  ;   print_message(error, goal_failed(Goal))
	  ),
	fail.


		 /*******************************
		 *	  CORRECT ANSWERS	*
		 *******************************/


answer(1, 'http://localhost:3000/xml',
       [ element(message,
	  [],
	  [ '\n  ',
	    element(head,
		    [],
		    [ '\n  ',
		      element(from,
			      [],
			      [ 'Jan Wielemaker'
			      ]),
		      '\n  ',
		      element(to,
			      [],
			      [ 'Prolog users'
			      ]),
		      '\n  ',
		      element(subject,
			      [],
			      [ 'The SWI-Prolog web-server'
			      ]),
		      '\n  '
		    ]),
	    '\n  ',
	    element(body,
		    [],
		    [ '\n',
		      element(p,
			      [],
			      [ '\nThis is the first demo of the web-server serving an XML message\n'
			      ]),
		      '\n  '
		    ]),
	    '\n'
	  ])
       ]).
