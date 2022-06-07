/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(netscape,
	  [ www_open_url/1,		% +UrlOrSpec
	    expand_url_path/2		% +Spec, -URL
	  ]).

%	www_open_url(+Url)
%
%	Open URL in running version of netscape or start a new netscape.
%	Based on a windows-only version by Bob Wielinga.
%
%	On Unix life is a bit harder as there is no established standard
%	to figure out which browser to open.

www_open_url(Spec) :-
	current_prolog_flag(windows, true), !,
	expand_url_path(Spec, URL),
	call(win_shell(open, URL)).	% fool xref
www_open_url(Spec) :-
	(   getenv('BROWSER', Browser)
	->  true
	;   Browser = netscape
	),
	expand_url_path(Spec, URL),
	www_open_url(Browser, URL).

www_open_url(Browser, URL) :-
	netscape_compatible(Browser), !,
	sformat(Cmd0, '~w -remote "xfeDoCommand(openBrowser)"', [Browser]),
	(   shell(Cmd0, 0)
	->  sformat(Cmd, '~w -remote "openURL(~w)" &', [Browser, URL]),
	    shell(Cmd)
	;   sformat(Cmd, '~w "~w" &', [Browser, URL]),
	    shell(Cmd)
	).
www_open_url(Browser, URL) :-
	sformat(Cmd, '~w "~w" &', [Browser, URL]),
	shell(Cmd).

netscape_compatible(Browser) :-
	file_base_name(Browser, Base),
	netscape_base(Base).

netscape_base(netscape).
netscape_base(mozilla).


		 /*******************************
		 *	      NET PATHS		*
		 *******************************/

:- multifile
	user:url_path/2.

user:url_path(swi,	   'http://www.swi.psy.uva.nl').
user:url_path(pl,	   'http://www.swi-prolog.org').
user:url_path(pl_twiki,	   'http://gollem.swi.psy.uva.nl/twiki/pl/bin/view').

user:url_path(pl_at_swi,   swi('projects/SWI-Prolog')).
user:url_path(pl_faq,	   pl_twiki('FAQ/WebHome')).
user:url_path(pl_man,	   pl_at_swi('Manual')).
user:url_path(pl_mail,	   pl('mailinglist.html')).
user:url_path(pl_download, pl('download.html')).
user:url_path(pl_bugs,	   pl('bugreport.html')).
user:url_path(pl_quick,	   pl_man('quickstart.html')).
user:url_path(pl_donate,   pl('donate.html')).

user:url_path(xpce,	   pl('packages/xpce')).
user:url_path(xpce_man,	   swi('projects/xpce/UserGuide')).

expand_url_path(URL, URL) :-
	atom(URL), !.
expand_url_path(Spec, URL) :-
	Spec =.. [Path, Local],
	(   user:url_path(Path, Spec2)
	->  expand_url_path(Spec2, URL0),
	    (	Local == '.'
	    ->	URL = URL0
	    ;	sub_atom(Local, 0, _, _, #)
	    ->	atom_concat(URL0, Local, URL)
	    ;	concat_atom([URL0, Local], /, URL)
	    )
	;   throw(error(existence_error(url_path, Path), expand_url_path/2))
	).

