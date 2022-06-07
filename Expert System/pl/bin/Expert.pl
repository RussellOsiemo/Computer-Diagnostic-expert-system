%expert.pl

      %EXPERT SYSTEM%
 

	  
load:-
         consult('data'),
         consult('engine'),
         consult('gui'),
         consult('library'),
         consult('ui'),
         load_foreign_library(dgfx),
         start.