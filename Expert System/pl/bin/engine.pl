%engine.pl



                                        %Values
%origin_vertice(_vertice).
origin_vertice(_vertice):-edge(_vertice,_,_).

%destination_vertice(_vertice)
destination_vertice(_vertice):-edge(_,_,_vertice).

%vertice(_vertice).
vertice_find(_vertice):-destination_vertice(_vertice);
        origin_vertice(_vertice).

%finish_state(_vertice).
finish_state(_vertice):-destination_vertice(_vertice),
	not(origin_vertice(_vertice)).

%beginning_state(_vertice).
beginning_state(_vertice):-origin_vertice(_vertice),
	not(destination_vertice(_vertice)).

%value(_value).
value(_value):-edge(_,_value,_).



		                               %Lists
%fixed_states(_list).
fixed_states(_list):-findall(_vertice,finish_state(_vertice),_vertices),
	sort(_vertices,_list).

%beginning_states(_list).
beginning_states(_list):-findall(_vertice,beginning_state(_vertice),_vertices),
	sort(_vertices,_list).

%vertice_list(_list).
vertice_list(_list):-findall(_vertice,vertice_find(_vertice),_vertices),
	sort(_vertices,_list).

%values(_list).
values(_list):-findall(_value,value(_value),_values),
	sort(_values,_list).



	                                  %Variables
%starting_state(_state).
starting_state(_state):-beginning_states(_list),
	member(_state,_list).

%vertice(_vertice).
vertice(_vertice):-vertice_list(_list),
	member(_vertice,_list).

%fixed_state(_state).
fixed_state(_state):-fixed_states(_list),
	member(_state,_list).


%------------------------------------------------------------------------

                                        %Rules

%Convert a list of strings into a string.
%connect_string(_list,_string).
connect_string([_first|_rest_of_list],_string):-
         connect_string(_rest_of_list,_string_of_rest),
         atom_concat(_string_of_rest,_first,_string).

connect_string([_first],_first).

%Returnes the first var of the list.
%first_in_list(_first,_list).
first_in_list(_first,[_first|_rest_of_list]).

%Returnes the fourth variable in the list.
%fourth_in_list(_fourth,_list).
fourth_in_list(_fourth,[_first,_second,_third,_fourth|_]).

third_in_list(_third,[_first,_second,_third|_]).

%Returnes the fifth variable in the list
%fifth_in_list(_fift,_list).
fifth_in_list(_fifth,[_first,_second,_third,_fourth,_fifth|_]).

%Removes 4 first vars from the list.
%remove_four(_list,_new_list).
remove_four([_first,_second,_third,_fourth|_tail],_tail).




                                      %TRANSLATOR


%unicode(_vertice,_name,_code).
unicode(a1,'Power Supply',1).
unicode(b1,'Video & Display',2).
unicode(c1,'Motherboard / CPU / RAM',3).
unicode(d1,'Hard Drive',4).
unicode(e1,'Optical Drive (CD / DVD / Blu-Ray)',5).
unicode(f1,'Sound & Audio',6).
unicode(a1,'- I am not sure.',7).

%value_code(_code,_value).
value_code(0,no).
value_code(1,yes).

unicode_list(_list):-findall(_name,unicode(_,_name,_),_list).



                                       %Engine

%Rule gets the list of the trip stack and returnes explanation.
%explanation_engine(_trip,_memory,_explanation).

explanation_engine(_trip,_memory,_trip_explain):-
        length(_trip,1),
		reverse(_memory,_memory1),
		connect_string(_memory1,_trip_explain).
	 						
explanation_engine1(_trip,[],_trip_explain):-
        first_in_list(_conclusion,_trip),
        fifth_in_list(_var,_trip),
     	vertice_data(_vetice1,_var,_explanation1),
		vertice_data(_vetice2,_conclusion,_),
	  	third_in_list(_value,_trip),
		reverse(['Solution: ',_conclusion,'\nReason: Your answer to: "',_var,'" was ',_value,'.\nExplanation: ',_explanation1,'\nConclusion: The problem was solved.'],_list),
		connect_string(_list,_explanation),
		connect_string([_explanation],_trip_explain).

explanation_engine1(['The problem could not be identified.',' --> '|_trip],[],_trip_explain):-
        first_in_list(_conclusion,_trip),
		third_in_list(_value,_trip),
		fifth_in_list(_var,_trip),
        reverse(['Solution: ',_conclusion,'\nReason: Your answer to: "',_var,'" was ',_value,'.\nConclusion: The problem can not be solved. \nExplanation: No other solution matches the situation: "',_var,' --> ',_value,'".'],_list),
        connect_string(_list,_explanation),
		connect_string([_explanation],_trip_explain).
		
explanation_engine(_trip,[],_trip_explain):-
        first_in_list(_conclusion,_trip),
        fifth_in_list(_var,_trip),
     	vertice_data(_vetice1,_var,_explanation1),
		vertice_data(_vetice2,_conclusion,_),
	  	third_in_list(_value,_trip),
		reverse(['Question: ',_var,'\nYour answer: ',_value,'.\nSolution: ',_conclusion,'\n\n'],_list),
		connect_string(_list,_explanation),
		remove_four(_trip,X),explanation_engine(X,[_explanation],_trip_explain).					

explanation_engine(['The problem could not be identified.',' --> '|_trip],[],_trip_explain):-
        first_in_list(_conclusion,_trip),
		reverse(['Solution: ',_conclusion,'\nYour answer: That was not the problem.\nConclosion: The problem could not be identified.\n\n'],_list),
		connect_string(_list,_explanation),
		explanation_engine(_trip,[_explanation],_trip_explain).
		
explanation_engine(_trip,_memory,_trip_explain):-
        first_in_list(_conclusion,_trip),
		fifth_in_list(_var,_trip),
		vertice_data(_vetice1,_var,_explanation1),
		vertice_data(_vetice2,_conclusion,_),
		third_in_list(_value,_trip),
		not(fixed_state(_vetice2)),
		not(fixed_state(_vetice1)),
		reverse(['Question: ',_var,'\nYour answer: ',_value,'.\nNext question: ',_conclusion,' \n\n'],_list),
		connect_string(_list,_explanation),
		remove_four(_trip,X),explanation_engine(X,[_explanation|_memory],_trip_explain).
		
explanation_engine(_trip,_memory,_trip_explain):-
        first_in_list(_conclusion,_trip),
		fifth_in_list(_var,_trip),
		vertice_data(_vetice1,_var,_explanation1),
		vertice_data(_vetice2,_conclusion,_),
		third_in_list(_value,_trip),
        fixed_state(_vetice2),	
		reverse(['Question: ',_var,'\nYour answer: ',_value,'.\nSolution: ',_conclusion,' \n\n'],_list),
		connect_string(_list,_explanation),
		remove_four(_trip,X),explanation_engine(X,[_explanation|_memory],_trip_explain).
									   
explanation_engine(_trip,_memory,_trip_explain):-
        first_in_list(_conclusion,_trip),
		fifth_in_list(_var,_trip),
		vertice_data(_vetice1,_var,_explanation1),
		vertice_data(_vetice2,_conclusion,_),
		third_in_list(_value,_trip),
		fixed_state(_vetice1),
		not(value(_value)),
		reverse(['Solution: ',_var,'\nYour answer: ',_value,'.\nNext question: ',_conclusion,'\n\n'],_list),
		connect_string(_list,_explanation),
		remove_four(_trip,X),explanation_engine(X,[_explanation|_memory],_trip_explain).





		