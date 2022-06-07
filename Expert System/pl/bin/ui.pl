% ui.pl

                                 % USER INTERFACE %

%SYSTEM

start:-
msgbox1('Hi im Russel Osiemo 
CCS/00209/019
Email: russelosiemo@gmail.com 
Year 3 Semester 2 Project
         ','Expert System: PC hardware malfunction diagnosis and repair guide'),
         menu.


menu:-
listbox0(['- Diagnose a malfunction -','- Dictionary of Terms -','- About -','- Exit -'],'Main Menu','Expert System: PC hardware malfunction diagnosis and repair guide',_option),
menu(_option).

%menu(_option).
menu(0):-
         unicode_list(_list),
         listbox0(['- Back to Main Menu -'|_list],'Choose the malfunction category','Malfunction diagnosis menu',_code),
         (unicode_list(_list),
         unicode(_vertice,_,_code),
         system_activate(_vertice,[]),menu);
	     menu.

menu(1):-
         list_of_terms(_list),
         listbox0(['- Back to main menu -'|_list],'Choose the term that you want understand:','Dictionary of Terms',_code),
         term(_code,_term,_description),
         msgbox1(_description,_term),
         menu(1);
		 menu.

menu(2):-start.

menu(3).

%system_activate(_vertice,_trip).
system_activate(_vertice1,_trip):-
         not(fixed_state(_vertice1)),
         vertice_data(_vertice1,_name,_explanation),
         listbox0(['No','Yes','Back','Explain','Dictionary of Terms','Stop Diagnosis'],'Choose your answer or another option:',_name,_code),
         ((value_code(_code,_value),
		 edge(_vertice1,_value,_vertice2),
         system_activate(_vertice2,['  -->  ',_value,'  -->  ',_name|_trip]));
	     (choice(_code),system_activate(_vertice1,_trip));
		 choice(_code,_trip);
		 choice(_code,_trip,_name);
		 fail).

system_activate(_vertice,_trip):-
         fixed_state(_vertice),
         vertice_data(_vertice,_name,_),
         listbox0(['That was not the problem, continue the diagnosis','The problem is solved, stop the diagnosis and go to the conclusion menu'],_name,'Conclusion:',_code),
         (choice(_code,[_name|_trip]);system_finish_menu([_name|_trip])).

%choice(_code,_trip).		 
choice(0,_trip):-
         fifth_in_list(_name,_trip),
         third_in_list(_value,_trip),
         first_in_list(_answer,_trip),
		 vertice_data(_vertice1,_name,_),
		 vertice_data(_conclusion,_answer,_),
		 ((edge(_vertice3,_,_conclusion),edge(_vertice4,_,_conclusion),not(_vertice4=_vertice3));
		 (edge(_vertice1,_value,_conclusion),edge(_vertice1,_value1,_conclusion1),not(_value1=_value),fixed_state(_conclusion1))),
		 msgbox1('The problem could not be identified.','Conclusion:'),
		 system_finish_menu(['The problem could not be identified.',' --> '|_trip]).
		 
choice(0,_trip):-
         fifth_in_list(_name,_trip),
         third_in_list(_value,_trip),
         vertice_data(_vertice,_name,_),
		 edge(_vertice,_value1,_vertice1),
		 not(_value1=_value),
		 system_activate(_vertice1,['  -->  ','That was not the problem','  -->  '|_trip]).

choice(3,_trip,_name):-
         vertice_data(_vertice,_name,_explanation),
         msgbox1(_explanation,_name),
         system_activate(_vertice,_trip).

choice(4):-
         list_of_terms(_list),
         listbox0(['- Back To Diagnosis -'|_list],'Choose the term that you want understand:','Dictionary of Terms',_code),
         (term(_code,_term,_description),
         msgbox1(_description,_term),
         choice(4));!.

choice(2,_trip):-
         fourth_in_list(_name,_trip),
		 vertice_data(_vertice,_name,_),
	     remove_four(_trip,_previous_trip),
		 system_activate(_vertice,_previous_trip).
choice(2,[]):-fail.


%system_finish(_trip,_code).
system_finish_menu(_trip):-		 
		 listbox0(['- Explain the Conclusion -','- Present the Conclusion Achivement -','- Show step-by-step Flowchart -','- Check Dictionary of Terms -','- Go to the Main Menu -'],'Choose an action:','Diagnosis finish Menu',_code),
		 system_finish(_trip,_code).

system_finish(_trip,0):-explanation1(_trip).

system_finish(_trip,2):-explanation2(_trip).

system_finish(_trip,1):-explanation3(_trip).

system_finish(_trip,3):-
         list_of_terms(_list),
         listbox0(['- Back -'|_list],'Choose the term that you want understand:','Dictionary of Terms',_code),
         term(_code,_term,_description),
         msgbox1(_description,_term),
         system_finish(_trip,3);
		 system_finish_menu(_trip).

system_finish(_trip,4).

%explanation(_trip).		 
explanation1(_trip):-
         explanation_engine1(_trip,[],_big_string),
         msgbox2(_big_string,'Conclusion Explanation: '),
		 system_finish_menu(_trip).

explanation2(_trip):-
         connect_string(_trip,_string),
         msgbox1(_string,'Diagnosis Flowchart:'),
		 system_finish_menu(_trip).

explanation3(_trip):-
         explanation_engine(_trip,[],_big_string),
         msgbox2(_big_string,'Conclusion Explanation: '),
		 system_finish_menu(_trip).


