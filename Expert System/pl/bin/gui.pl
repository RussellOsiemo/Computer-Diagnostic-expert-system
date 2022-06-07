
% vim: syntax=prolog

:- op(700,xfx,���).




concat([X],X).
concat([X,Y|Tail],A) :-
	atom_concat(X,Y,Z),
	concat([Z|Tail],A).


remove_first1(Item,[Item|Tail],Tail).
remove_first1(Item,[Head|Tail],[Head|Tail2]) :-
	remove_first1(Item,Tail,Tail2).
remove_first(A,B,C) :-
	remove_first1(A,B,C),!.



tmura([],[]).
tmura([Item|Tail],List) :-
	remove_first(Item,List,List2),
	tmura(Tail,List2).


translate([],[]).
translate([Item|Tail],[NewItem|NewTail]) :-
	code(Item,NewItem),
	translate(Tail,NewTail).



location(1,Elem,[Elem|_]).
location(Pos1,Elem,[_|List]) :-
	location(Pos2,Elem,List),
	Pos1 is Pos2 + 1.



list_sum(0,[]).
list_sum(Sum,[Number|Tail]) :-
	list_sum(Sum2,Tail),
	Sum is Sum2 + Number.

% append(ListOfLists,List).
append([List],List).
append([Head|Tail],List) :-
	append(Tail,Tail2),
	append(Head,Tail2,List).

list_itoa([],[]).
list_itoa([X|Tail],[Y|Tail2]) :-
	int_to_atom(X,Y),
	list_itoa(Tail,Tail2).



replace_all([],[],_,_).
replace_all([X|L],[Y|R],X,Y):-
	replace_all(L,R,X,Y),!.
replace_all([X|L],[X|R],A,B):-
	replace_all(L,R,A,B).

beautify(X,Y):-
	atom_chars(X,Z),
	replace_all(Z,B,'_',' '),
	string_to_list(A,B),
	string_to_atom(A,Y).











msgbox(Msg,Title):-msgbox(Msg,Title,[215,248,255,0,81,98],'ariel',26,1,0).

msgbox1(Msg,Title):-
		msgbox(Msg,Title,[215,248,255,0,81,98],'ariel',25,0,0).
msgbox2(Msg,Title):-
		msgbox(Msg,Title,[215,248,255,0,81,98],'ariel',25,0,1).


listbox(List,Message,Title,Choice):-
		listbox(List,Message,Title,[215,248,255,0,81,98],'ariel',28,0,1,Choice).

listbox0(List,Message,Title,Choice):-
		listbox(List,Message,Title,[215,248,255,0,81,98],'ariel',28,0,0,Choice).



yesnobox(Message,Title,Answer):-
		yesnobox(Message,Title,[215,248,255,0,81,98],'ariel',28,0,0,Answer).


%:- setenv('EDITOR', myedit).
%If the editor is not known to SWI-Prolog, it will open the file, but not locate the editor to source-locations. To tell Prolog how to open a file and jump to a specified line, add a clause to edit:edit_command/2 . See the example below. See library/edit.pl for details. 
%:- multifile edit:edit_command/2.
%edit_command(myedit, '%e --line=%d "%f"').


imagebox1(Address,Message,Title):-
		imagebox(Address,Message,Title,[235,187,122,122,78,18],'ariel',30,0,1).

