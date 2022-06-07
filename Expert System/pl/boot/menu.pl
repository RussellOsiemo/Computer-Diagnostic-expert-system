/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Sciece
*/

:- module($win_menu,
	  [ win_insert_menu_item/4,	% +PopupName, +Item, +Before, :Goal
	    win_has_menu/0		% Test whether we have menus
	  ]).

:- module_transparent
	win_insert_menu_item/4.
:- multifile
	prolog:on_menu/1.
:- dynamic
	menu_action/2.
:- volatile
	menu_action/2.

prolog:on_menu(Label) :-
	menu_action(Label, Action),
	catch(Action, Error,
	      print_message(error, Error)).

%	win_has_menu
%	
%	Test whether the system provides the menu interface

win_has_menu :-
	current_predicate(_, $win_insert_menu_item(_, _, _)).

%	win_insert_menu_item(+Popup, +Item, +Before, :Goal)
%
%	Add a menu-item to the PLWIN.EXE menu.  See the reference manual
%	for details.

win_insert_menu_item(Popup, --, Before, _Goal) :- !,
	call($win_insert_menu_item(Popup, --, Before)). % fool check/0
win_insert_menu_item(Popup, Item, Before, Goal) :-
	$strip_module(Goal, Module, PlainGoal),
	insert_menu_item(Popup, Item, Before, Module:PlainGoal).

insert_menu_item(Popup, Item, Before, Goal) :-
	(   menu_action(Item, OldGoal),
	    OldGoal \== Goal
	->  throw(error(permission_error(redefine, Item),
			win_insert_menu_item/4))
	;   true
	),
	call($win_insert_menu_item(Popup, Item, Before)),
	assert(menu_action(Item, Goal)).
