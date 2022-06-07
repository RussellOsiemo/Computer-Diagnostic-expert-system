/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science

    Purpose: Index to file online_manual
*/

:- module(help_index,
	[ predicate/5
	, section/4
	, function/3
	]).

%   Predicate predicate/5

predicate(help, 0, 'Give help on help', 45226, 45271).
predicate(help, 1, 'Give help on predicates and show parts of manual', 45274, 46395).
predicate(apropos, 1, 'library(online_help) Search manual', 46398, 46879).
predicate(explain, 1, 'library(explain) Explain argument', 46882, 47284).
predicate(explain, 2, 'library(explain) 2nd argument is explanation of first', 47287, 47531).
predicate(current_prolog_flag, 2, 'Get system configuration parameters', 63805, 86657).
predicate(set_prolog_flag, 2, 'Define a system feature', 86660, 87285).
predicate(make_library_index, 1, 'Create autoload file INDEX.pl', 92156, 92452).
predicate(make_library_index, 2, 'Create selective autoload file INDEX.pl', 92455, 93503).
predicate(reload_library_index, 0, 'Force reloading the autoload index', 93506, 94223).
predicate(guitracer, 0, 'Install hooks for the graphical debugger', 131499, 131885).
predicate(noguitracer, 0, 'Disable the graphical debugger', 131888, 132027).
predicate(prolog_ide, 1, 'Program access to the development enviroment', 132869, 133674).
predicate(load_files, 2, 'Load source files with options', 141981, 145255).
predicate(consult, 1, 'Read (compile) a Prolog source file', 145258, 146203).
predicate(ensure_loaded, 1, 'Consult a file if that has not yet been done', 146206, 146858).
predicate(include, 1, 'Include a file with declarations', 146861, 147178).
predicate(require, 1, 'This file requires these predicates', 147181, 148032).
predicate(make, 0, 'Reconsult all changed source files', 148035, 148727).
predicate(library_directory, 1, 'Hook (user) Directories holding Prolog libraries', 148730, 149079).
predicate(file_search_path, 2, 'Define path-aliases for locating files', 149082, 150455).
predicate(expand_file_search_path, 2, 'Wildcard expansion of file paths', 150458, 150713).
predicate(prolog_file_type, 2, 'Define meaning of file extension', 150716, 151777).
predicate(source_file, 1, 'Examine currently loaded source files', 151780, 151976).
predicate(source_file, 2, 'Obtain source file of predicate', 151979, 152401).
predicate(prolog_load_context, 2, 'Context information for directives', 152404, 153356).
predicate(source_location, 2, 'Location of last read term', 153359, 153711).
predicate(term_expansion, 2, 'Hook (user) Convert term before compilation', 153714, 155135).
predicate(expand_term, 2, 'Compiler: expand read term into clause(s)', 155138, 155470).
predicate(goal_expansion, 2, 'Hook for macro-expanding goals', 155473, 156410).
predicate(expand_goal, 2, 'Compiler: expand goal in clause-body', 156413, 156671).
predicate(at_initialization, 1, 'Register goal to run at start-up', 156674, 157116).
predicate(at_halt, 1, 'Register goal to run at halt/1', 157119, 157548).
predicate((initialization), 1, 'Initialization directive', 157551, 157958).
predicate(compiling, 0, 'Is this a compilation run?', 157961, 158298).
predicate(preprocessor, 2, 'Install a preprocessor before the compiler', 158301, 158838).
predicate(qcompile, 1, 'Compile source to Quick Load File', 159833, 160815).
predicate(edit, 1, 'Edit a file, predicate, module (extensible)', 162641, 163173).
predicate(edit, 0, 'Edit current script- or associated file', 163176, 163389).
predicate(locate, 3, 'Locate targets for edit/1', 163392, 164353).
predicate(locate, 2, 'Locate targets for edit/1', 164356, 164549).
predicate(edit_source, 1, 'Call editor for edit/1', 164552, 165593).
predicate(edit_command, 2, 'Specify editor activation', 165596, 166498).
predicate(load, 0, 'Load edit/1 extensions', 166501, 167017).
predicate(listing, 1, 'List predicate', 167020, 167341).
predicate(listing, 0, 'List program in current module', 167344, 167423).
predicate(portray_clause, 1, 'Pretty print a clause', 167426, 167723).
predicate(portray_clause, 2, 'Pretty print a clause to a stream', 167726, 167905).
predicate(var, 1, 'Type check for unbound variable', 167977, 168067).
predicate(nonvar, 1, 'Type check for bound term', 168070, 168173).
predicate(integer, 1, 'Type check for integer', 168176, 168272).
predicate(float, 1, 'Type check for a floating point number', 168275, 168378).
predicate(number, 1, 'Type check for integer or float', 168381, 168501).
predicate(atom, 1, 'Type check for an atom', 168504, 168588).
predicate(string, 1, 'Type check for string', 168591, 168682).
predicate(atomic, 1, 'Type check for primitive', 168685, 168824).
predicate(compound, 1, 'Test for compound term', 168827, 168969).
predicate(callable, 1, 'Test for atom or compound term', 168972, 169164).
predicate(ground, 1, 'Verify term holds no unbound variables', 169167, 169261).
predicate(==, 2, 'Identical', 170325, 170496).
predicate(\==, 2, 'Not identical', 170499, 170577).
predicate(=, 2, 'Unification', 170580, 170707).
predicate(unify_with_occurs_check, 2, 'Logically sound unification', 170710, 171441).
predicate(\=, 2, 'Not unifyable', 171444, 171520).
predicate(=@=, 2, 'Structural identical', 171523, 172086).
predicate(\=@=, 2, 'Not structural identical', 172089, 172171).
predicate(@<, 2, 'Standard order smaller', 172174, 172305).
predicate(@=<, 2, 'Standard order smaller or equal', 172308, 172476).
predicate(@>, 2, 'Standard order larger', 172479, 172609).
predicate(@>=, 2, 'Standard order larger or equal', 172612, 172780).
predicate(compare, 3, 'Compare, using a predicate to determine the order', 172783, 173035).
predicate(fail, 0, 'Always false', 173655, 173774).
predicate(true, 0, 'Succeed', 173777, 173896).
predicate(repeat, 0, 'Succeed, leaving infinite backtrack points', 173899, 173983).
predicate(!, 0, 'Cut (discard choicepoints)', 173986, 174629).
predicate((','), 2, 'Conjunction of goals', 174632, 174899).
predicate((;), 2, 'Disjunction of goals. Same as |/2', 174902, 175039).
predicate((|), 2, 'Disjunction of goals. Same as ;/2', 175042, 175175).
predicate((->), 2, 'If-then-else', 175178, 175967).
predicate((*->), 2, 'Soft-cut', 175970, 176755).
predicate(\+, 1, 'Negation by failure. Same as not/1', 176758, 176964).
predicate(call, 1, 'Call a goal', 177455, 177616).
predicate(call, _G23, 'Call with additional arguments', 177619, 178175).
predicate(apply, 2, 'Call goal with additional arguments', 178178, 178757).
predicate(not, 1, 'Negation by failure (argument not provable). Same as \+/1', 178760, 178909).
predicate(once, 1, 'Call a goal deterministically', 178912, 179229).
predicate(ignore, 1, 'Call the argument, but always succeed', 179232, 179453).
predicate(call_with_depth_limit, 3, 'Prove goal with bounded depth', 179456, 180893).
predicate(call_cleanup, 3, 'Guard a goal with a cleaup-handler', 180896, 183140).
predicate(call_cleanup, 2, 'Guard a goal with a cleaup-handler', 183143, 183554).
predicate(catch, 3, 'Call goal, watching for exceptions', 184024, 184814).
predicate(throw, 1, 'Raise an exception (see catch/3)', 184817, 186077).
predicate(print_message, 2, 'Print message from (exception) term', 189891, 191007).
predicate(print_message_lines, 3, 'Print message to stream', 191010, 192051).
predicate(message_hook, 3, 'Intercept print_message/2', 192054, 192594).
predicate(message_to_string, 2, 'Translate message-term to string', 192597, 192885).
predicate(on_signal, 3, 'Handle a software signal', 193709, 196455).
predicate(current_signal, 3, 'Current software signal mapping', 196458, 196784).
predicate(block, 3, 'Start a block (`catch''/`throw'')', 199082, 199513).
predicate(exit, 2, 'Exit from named block. See block/3', 199516, 199796).
predicate(fail, 1, 'Immediately fail named block. See block/3', 199799, 199998).
predicate(!, 1, 'Cut block. See block/3', 200001, 200151).
predicate(phrase, 2, 'Activate grammar-rule set', 201684, 201817).
predicate(phrase, 3, 'Activate grammar-rule set (returning rest)', 201820, 202269).
predicate(abolish, 1, 'Remove predicate definition from the database', 203810, 204802).
predicate(abolish, 2, 'Remove predicate definition from the database', 204805, 205005).
predicate(redefine_system_predicate, 1, 'Abolish system definition', 205008, 205622).
predicate(retract, 1, 'Remove clause from the database', 205625, 205853).
predicate(retractall, 1, 'Remove unifying clauses from the database', 205856, 206024).
predicate(assert, 1, 'Add a clause to the database', 206027, 206204).
predicate(asserta, 1, 'Add a clause to the database (first)', 206207, 206358).
predicate(assertz, 1, 'Add a clause to the database (last)', 206361, 206432).
predicate(assert, 2, 'Add a clause to the database, give reference', 206435, 206698).
predicate(asserta, 2, 'Add a clause to the database (first)', 206701, 206886).
predicate(assertz, 2, 'Add a clause to the database (last)', 206889, 206994).
predicate(recorda, 3, 'Record term in the database (first)', 206997, 207317).
predicate(recorda, 2, 'Record term in the database (first)', 207320, 207422).
predicate(recordz, 3, 'Record term in the database (last)', 207425, 207629).
predicate(recordz, 2, 'Record term in the database (last)', 207632, 207734).
predicate(recorded, 3, 'Obtain term from the database', 207737, 208028).
predicate(recorded, 2, 'Obtain term from the database', 208031, 208140).
predicate(erase, 1, 'Erase a database record or clause', 208143, 208618).
predicate(flag, 3, 'Simple global variable system', 208621, 209406).
predicate(hash_term, 2, 'Hash-value of ground term', 210955, 211631).
predicate((dynamic), 1, 'Indicate predicate definition may change', 212304, 212840).
predicate(compile_predicates, 1, 'Compile dynamoc code to static', 212843, 213448).
predicate((multifile), 1, 'Indicate distributed definition of predicate', 213451, 213721).
predicate((discontiguous), 1, 'Indicate distributed definition of a predicate', 213724, 213958).
predicate(index, 1, 'Change clause indexing', 213961, 215840).
predicate(current_atom, 1, 'Examine existing atoms', 215919, 216149).
predicate(current_functor, 2, 'Examine existing name/arity pairs', 216152, 216366).
predicate(current_flag, 1, 'Examine existing flags', 216369, 216536).
predicate(current_key, 1, 'Examine existing database keys', 216539, 216692).
predicate(current_predicate, 2, 'Examine existing predicates', 216695, 217174).
predicate(current_predicate, 1, 'Examine existing predicates (ISO)', 217177, 217513).
predicate(predicate_property, 2, 'Query predicate attributes', 217516, 221291).
predicate(dwim_predicate, 2, 'Find predicate in ``Do What I Mean'''' sense', 221294, 221958).
predicate(clause, 2, 'Get clauses of a predicate', 221961, 222436).
predicate(clause, 3, 'Get clauses of a predicate', 222439, 222836).
predicate(nth_clause, 3, 'N-th clause of a predicate', 222839, 223845).
predicate(clause_property, 2, 'Get properties of a clause', 223848, 224836).
predicate(open, 4, 'Open a file (creating a stream)', 226118, 230090).
predicate(open, 3, 'Open a file (creating a stream)', 230093, 230232).
predicate(open_null_stream, 1, 'Open a stream to discard output', 230235, 230607).
predicate(close, 1, 'Close stream', 230610, 230872).
predicate(close, 2, 'Close stream (forced)', 230875, 231168).
predicate(stream_property, 2, 'Get stream properties', 231171, 233855).
predicate(current_stream, 3, 'Examine open streams', 233858, 234391).
predicate(set_stream_position, 2, 'Seek stream to position', 234394, 234692).
predicate(seek, 4, 'Modify the current position in a stream', 234695, 235572).
predicate(set_stream, 2, 'Set stream attribute', 235575, 237988).
predicate(see, 1, 'Change the current input stream', 240637, 240941).
predicate(tell, 1, 'Change current output stream', 240944, 241251).
predicate(append, 1, 'Append to a file', 241254, 241487).
predicate(seeing, 1, 'Query the current input stream', 241490, 241790).
predicate(telling, 1, 'Query current output stream', 241793, 242099).
predicate(seen, 0, 'Close the current input stream', 242102, 242224).
predicate(told, 0, 'Close current output', 242227, 242352).
predicate(set_input, 1, 'Set current input stream from a stream', 242605, 242810).
predicate(set_output, 1, 'Set current output stream from a stream', 242813, 242935).
predicate(current_input, 1, 'Get current input stream', 242938, 243118).
predicate(current_output, 1, 'Get the current output stream', 243121, 243226).
predicate(wait_for_input, 3, 'Wait for input with optional timeout', 243293, 245496).
predicate(character_count, 2, 'Get character index on a stream', 245499, 245833).
predicate(line_count, 2, 'Line number on stream', 245836, 246016).
predicate(line_position, 2, 'Character position in line on stream', 246019, 246384).
predicate(fileerrors, 2, 'Do/Don''t warn on file errors', 246387, 246924).
predicate(nl, 0, 'Generate a newline', 247082, 247205).
predicate(nl, 1, 'Generate a newline on a stream', 247208, 247285).
predicate(put, 1, 'Write a character', 247288, 247522).
predicate(put, 2, 'Write a character on a stream', 247525, 247627).
predicate(put_byte, 1, 'Write a byte', 247630, 247697).
predicate(put_byte, 2, 'Write a byte on a stream', 247700, 247791).
predicate(put_char, 1, 'Write a character', 247794, 247861).
predicate(put_char, 2, 'Write a character on a stream', 247864, 247955).
predicate(put_code, 1, 'Write a character-code', 247958, 248025).
predicate(put_code, 2, 'Write a character-code on a stream', 248028, 248119).
predicate(tab, 1, 'Output number of spaces', 248122, 248348).
predicate(tab, 2, 'Output number of spaces on a stream', 248351, 248473).
predicate(flush_output, 0, 'Output pending characters on current stream', 248476, 248726).
predicate(flush_output, 1, 'Output pending characters on specified stream', 248729, 248879).
predicate(ttyflush, 0, 'Flush output on terminal', 248882, 248986).
predicate(get_byte, 1, 'Read next byte (ISO)', 248989, 249196).
predicate(get_byte, 2, 'Read next byte from a stream (ISO)', 249199, 249318).
predicate(get_code, 1, 'Read next character (ISO)', 249321, 249561).
predicate(get_code, 2, 'Read next character from a stream (ISO)', 249564, 249693).
predicate(get_char, 1, 'Read next character as an atom (ISO)', 249696, 249962).
predicate(get_char, 2, 'Read next character from a stream (ISO)', 249965, 250202).
predicate(get0, 1, 'Read next character', 250205, 250294).
predicate(get0, 2, 'Read next character from a stream', 250297, 250411).
predicate(get, 1, 'Read first non-blank character', 250414, 250600).
predicate(get, 2, 'Read first non-blank character from a stream', 250603, 250722).
predicate(peek_byte, 1, 'Read byte without removing', 250725, 250874).
predicate(peek_byte, 2, 'Read byte without removing', 250877, 251045).
predicate(peek_code, 1, 'Read character-code without removing', 251048, 251197).
predicate(peek_code, 2, 'Read character-code without removing', 251200, 251368).
predicate(peek_char, 1, 'Read character without removing', 251371, 251524).
predicate(peek_char, 2, 'Read character without removing', 251527, 251699).
predicate(skip, 1, 'Skip to character in current input', 251702, 251897).
predicate(skip, 2, 'Skip to character on stream', 251900, 252009).
predicate(get_single_char, 1, 'Read next character from the terminal', 252012, 252630).
predicate(at_end_of_stream, 0, 'Test for end of file on input', 252633, 252840).
predicate(at_end_of_stream, 1, 'Test for end of file on stream', 252843, 253180).
predicate(copy_stream_data, 3, 'Copy n bytes from stream to stream', 253183, 253409).
predicate(copy_stream_data, 2, 'Copy all data from stream to stream', 253412, 253632).
predicate(write_term, 2, 'Write term with options', 254406, 256994).
predicate(write_term, 3, 'Write term with options to stream', 256997, 257207).
predicate(write_canonical, 1, 'Write a term with quotes, ignore operators', 257210, 257677).
predicate(write_canonical, 2, 'Write a term with quotes, ignore operators on a stream', 257680, 257836).
predicate(write, 1, 'Write term', 257839, 258064).
predicate(write, 2, 'Write term to stream', 258067, 258175).
predicate(writeq, 1, 'Write term, insert quotes', 258178, 258507).
predicate(writeq, 2, 'Write term, insert quotes on stream', 258510, 258639).
predicate(print, 1, 'Print a term', 258642, 258986).
predicate(print, 2, 'Print a term on a stream', 258989, 259097).
predicate(portray, 1, 'Hook (user) Modify behaviour of print/1', 259100, 259521).
predicate(read, 1, 'Read Prolog term', 259524, 259852).
predicate(read, 2, 'Read Prolog term from stream', 259855, 259961).
predicate(read_clause, 1, 'Read clause', 259964, 260368).
predicate(read_clause, 2, 'Read clause from stream', 260371, 260514).
predicate(read_term, 2, 'Read term with options', 260517, 265476).
predicate(read_term, 3, 'Read term with options from stream', 265479, 265651).
predicate(read_history, 6, 'Read using history substitution', 265654, 266616).
predicate(prompt, 2, 'Change the prompt used by read/1', 266619, 267198).
predicate(prompt1, 1, 'Change prompt for 1 line', 267201, 267378).
predicate(functor, 3, 'Get name and arity of a term or construct a term ', 267488, 267996).
predicate(arg, 3, 'Access argument of a term', 267999, 268726).
predicate(setarg, 3, 'Destructive assignment on term', 268729, 269407).
predicate(=.., 2, '``Univ.'''' Term to list conversion', 269410, 269810).
predicate(numbervars, 3, 'Number unbound variables of a term', 269813, 270324).
predicate(numbervars, 4, 'Number unbound variables of a term', 270327, 270626).
predicate(free_variables, 2, 'Find unbound variables in a term', 270629, 270949).
predicate(copy_term, 2, 'Make a copy of a term', 270952, 271576).
predicate(atom_codes, 2, 'Convert between atom and list of characters codes', 272760, 273222).
predicate(atom_chars, 2, 'Convert between atom and list of characters', 273225, 273495).
predicate(char_code, 2, 'Convert between character and character code', 273498, 273654).
predicate(number_chars, 2, 'Convert between number and one-char atoms', 273657, 274023).
predicate(number_codes, 2, 'Convert between number and character codes', 274026, 274322).
predicate(atom_number, 2, 'Convert between atom and number', 274325, 274598).
predicate(name, 2, 'Convert between atom and list of character codes', 274601, 275115).
predicate(int_to_atom, 3, 'Convert from integer to atom (non-decimal)', 275118, 275741).
predicate(int_to_atom, 2, 'Convert from integer to atom', 275744, 275861).
predicate(term_to_atom, 2, 'Convert between term and atom', 275864, 276281).
predicate(atom_to_term, 3, 'Convert between atom and term', 276284, 276819).
predicate(atom_concat, 3, 'Append two atoms', 276822, 277340).
predicate(concat_atom, 2, 'Append a list of atoms', 277343, 277723).
predicate(concat_atom, 3, 'Append a list of atoms with separator', 277726, 278219).
predicate(atom_length, 2, 'Determine length of an atom', 278222, 278707).
predicate(atom_prefix, 2, 'Test for start of atom', 278710, 279009).
predicate(sub_atom, 5, 'Take a substring from an atom', 279012, 279638).
predicate(char_type, 2, 'Classify characters', 280237, 283767).
predicate(code_type, 2, 'Classify a character-code', 283770, 284266).
predicate(downcase_atom, 2, 'Convert atom to lower-case', 284575, 284962).
predicate(upcase_atom, 2, 'Convert atom to upper-case', 284965, 285128).
predicate(string_to_atom, 2, 'Conversion between string and atom', 287450, 287731).
predicate(string_to_list, 2, 'Conversion between string and list of character codes', 287734, 287987).
predicate(string_length, 2, 'Determine length of a string', 287990, 288314).
predicate(string_concat, 3, 'atom_concat/3 for strings', 288317, 289096).
predicate(sub_string, 5, 'Take a substring from a string', 289099, 289466).
predicate(op, 3, 'Declare an operator', 290712, 293263).
predicate(current_op, 3, 'Examine current operator declarations', 293266, 293534).
predicate(char_conversion, 2, 'Provide mapping of input characters', 293735, 294219).
predicate(current_char_conversion, 2, 'Query input character mapping', 294222, 294455).
predicate(between, 3, 'Integer range checking/generating', 295399, 295760).
predicate(succ, 2, 'Logical integer successor relation', 295763, 296163).
predicate(plus, 3, 'Logical integer addition', 296166, 296372).
predicate(>, 2, 'Arithmetic larger', 296375, 296519).
predicate(<, 2, 'Arithmetic smaller', 296522, 296666).
predicate(=<, 2, 'Arithmetic smaller or equal', 296669, 296824).
predicate(>=, 2, 'Arithmetic larger or equal', 296827, 296982).
predicate(=\=, 2, 'Arithmetic not equal', 296985, 297131).
predicate(=:=, 2, 'Arithmetic equal', 297134, 297280).
predicate(is, 2, 'Evaluate arithmetic expression', 297283, 298423).
predicate(-, 1, 'Unary minus', 299794, 299850).
predicate(+, 2, 'Addition', 299853, 299950).
predicate(-, 2, 'Subtraction', 299953, 300050).
predicate(*, 2, 'Multiplication', 300053, 300141).
predicate(/, 2, 'Division', 300144, 300240).
predicate(mod, 2, 'Remainder of division', 300243, 300797).
predicate(rem, 2, 'Remainder of division', 300800, 300988).
predicate(//, 2, 'Integer division', 300991, 301136).
predicate(abs, 1, 'Absolute value', 301139, 301233).
predicate(sign, 1, 'Extract sign of value', 301236, 301356).
predicate(max, 2, 'Maximum of two numbers', 301359, 301489).
predicate(min, 2, 'Minimum of two numbers', 301492, 301623).
predicate('.', 2, 'Consult. Also list constructor', 301626, 302056).
predicate(random, 1, 'Generate random number', 302059, 302278).
predicate(round, 1, 'Round to nearest integer', 302281, 302391).
predicate(integer, 1, 'Type check for integer', 302394, 302483).
predicate(float, 1, 'Type check for a floating point number', 302486, 302803).
predicate(float_fractional_part, 1, 'Fractional part of a float', 302806, 303016).
predicate(float_integer_part, 1, 'Integer part of a float', 303019, 303231).
predicate(truncate, 1, 'Truncate float to integer', 303234, 303352).
predicate(floor, 1, 'Largest integer below argument', 303355, 303507).
predicate(ceiling, 1, 'Smallest integer larger than arg', 303510, 303668).
predicate(ceil, 1, 'Smallest integer larger than arg', 303671, 303753).
predicate(>>, 2, 'Bitwise right shift', 303756, 303899).
predicate(<<, 2, 'Bitwise left shift', 303902, 304044).
predicate(\/, 2, 'Bitwise or', 304047, 304172).
predicate(/\, 2, 'Bitwise and', 304175, 304301).
predicate(xor, 2, 'Bitwise exclusive or', 304304, 304446).
predicate(\, 1, 'Bitwise negation', 304449, 304498).
predicate(sqrt, 1, 'Square root', 304501, 304587).
predicate(sin, 1, 'Sine', 304590, 304706).
predicate(cos, 1, 'Cosine', 304709, 304827).
predicate(tan, 1, 'Tangent', 304830, 304948).
predicate(asin, 1, 'Inverse (arc) sine', 304951, 305084).
predicate(acos, 1, 'Inverse (arc) cosine', 305087, 305222).
predicate(atan, 1, 'Inverse (arc) tangent', 305225, 305360).
predicate(atan, 2, 'Rectangular to polar conversion', 305363, 305674).
predicate(log, 1, 'Natural logarithm', 305677, 305766).
predicate(log10, 1, '10 base logarithm', 305769, 305864).
predicate(exp, 1, 'Exponent (base $e$)', 305867, 305950).
predicate(**, 2, 'Power function', 305953, 306063).
predicate(^, 2, 'Existential quantification (bagof/3, setof/3)', 306066, 306151).
predicate(pi, 0, 'Mathematical constant', 306154, 306219).
predicate(e, 0, 'Mathematical constant', 306222, 306283).
predicate(cputime, 0, 'Get CPU time', 306286, 306466).
predicate(arithmetic_function, 1, 'Register an evaluable function', 307212, 308118).
predicate(current_arithmetic_function, 1, 'Examine evaluable functions', 308121, 308339).
predicate(is_list, 1, 'Type check for a list', 308607, 308989).
predicate(memberchk, 2, 'Deterministic member/2', 308992, 309116).
predicate(length, 2, 'Length of a list', 309119, 309319).
predicate(sort, 2, 'Sort elements in a list', 309322, 309667).
predicate(msort, 2, 'Sort, do not remove duplicates', 309670, 309790).
predicate(keysort, 2, 'Sort, using a key', 309793, 310667).
predicate(predsort, 3, 'Sort, using a predicate to determine the order', 310670, 311074).
predicate(merge, 3, 'Merge two sorted lists', 311077, 311449).
predicate(merge_set, 3, 'Merge two sorted sets', 311452, 311792).
predicate(findall, 3, 'Find all solutions to a goal', 311895, 312403).
predicate(bagof, 3, 'Find all solutions to a goal', 312406, 313559).
predicate(setof, 3, 'Find all unique solutions to a goal', 313562, 313771).
predicate(checklist, 2, 'Invoke goal on all members of a list', 314305, 314554).
predicate(maplist, 3, 'Transform all elements of a list', 314557, 314845).
predicate(sublist, 3, 'Determine elements that meet condition', 314848, 315049).
predicate(forall, 2, 'Prove goal for all solutions of another goal', 315087, 315493).
predicate(writeln, 1, 'Write term, followed by a newline', 316083, 316161).
predicate(writef, 1, 'Formatted write', 316164, 316240).
predicate(writef, 2, 'Formatted write on stream', 316243, 319420).
predicate(swritef, 3, 'Formatted write on a string', 319423, 319742).
predicate(swritef, 2, 'Formatted write on a string', 319745, 319866).
predicate(format, 1, 'Formatted output', 319910, 320011).
predicate(format, 2, 'Formatted output with arguments', 320014, 324836).
predicate(format, 3, 'Formatted output on a stream', 324839, 325015).
predicate(sformat, 3, 'Format on a string', 325018, 325341).
predicate(sformat, 2, 'Format on a string', 325344, 325467).
predicate(format_predicate, 2, 'Program format/[1,2]', 325545, 326660).
predicate(current_format_predicate, 2, 'Enumerate user-defined format codes', 326663, 327139).
predicate(tty_get_capability, 3, 'Get terminal parameter', 327488, 328118).
predicate(tty_goto, 2, 'Goto position on screen', 328121, 328360).
predicate(tty_put, 2, 'Write control string to terminal', 328363, 328771).
predicate(set_tty, 2, 'Set `tty'' stream', 328774, 328985).
predicate(tty_size, 2, 'Get row/column size of the terminal', 328988, 329848).
predicate(shell, 2, 'Execute OS command', 329948, 330942).
predicate(shell, 1, 'Execute OS command', 330945, 331030).
predicate(shell, 0, 'Execute interactive subshell', 331033, 331220).
predicate(win_exec, 2, 'Win32: spawn Windows task', 331223, 331552).
predicate(win_shell, 2, 'Win32: open document through Shell', 331555, 332090).
predicate(win_registry_get_value, 3, 'Win32: get registry value', 332093, 333171).
predicate(getenv, 2, 'Get shell environment variable', 333174, 333450).
predicate(setenv, 2, 'Set shell environment variable', 333453, 333786).
predicate(unsetenv, 1, 'Delete shell environment variable', 333789, 333889).
predicate(unix, 1, 'OS interaction', 333892, 335669).
predicate(get_time, 1, 'Get current time', 336115, 336380).
predicate(convert_time, 8, 'Break time stamp into fields', 336383, 337239).
predicate(convert_time, 2, 'Convert time stamp to string', 337242, 337569).
predicate(window_title, 2, 'Win32: change title of window', 337998, 338172).
predicate(win_window_pos, 1, 'Win32: change size and position of window', 338175, 339206).
predicate(win_has_menu, 0, 'Win32: true if console menu is available', 339209, 339318).
predicate(win_insert_menu, 2, 'plwin.exe: add menu', 339321, 339971).
predicate(win_insert_menu_item, 4, 'plwin.exe: add item to menu', 339974, 340406).
predicate(access_file, 2, 'Check access permissions of a file', 340491, 341097).
predicate(exists_file, 1, 'Check existence of file', 341100, 341302).
predicate(file_directory_name, 2, 'Get directory part of path', 341305, 341710).
predicate(file_base_name, 2, 'Get file part of path', 341713, 341957).
predicate(same_file, 2, 'Succeeds if arguments refer to same file', 341960, 342308).
predicate(exists_directory, 1, 'Check existence of directory', 342311, 342575).
predicate(delete_file, 1, 'Remove a file from the file system', 342578, 342679).
predicate(rename_file, 2, 'Change name of file', 342682, 342868).
predicate(size_file, 2, 'Get size of a file in characters', 342871, 343007).
predicate(time_file, 2, 'Get last modification time of file', 343010, 343303).
predicate(absolute_file_name, 2, 'Get absolute path name', 343306, 343906).
predicate(absolute_file_name, 3, 'Get absolute path name with options', 343909, 346950).
predicate(is_absolute_file_name, 1, 'True if arg defines an absolute path', 346953, 347452).
predicate(file_name_extension, 3, 'Add, remove or test file extensions', 347455, 348078).
predicate(expand_file_name, 2, 'Wildcard expansion of file names', 348081, 349140).
predicate(prolog_to_os_filename, 2, 'Convert between Prolog and OS filenames', 349143, 349653).
predicate(read_link, 3, 'Read a symbolic link', 349656, 350137).
predicate(tmp_file, 2, 'Create a temporary filename', 350140, 350466).
predicate(make_directory, 1, 'Create a folder on the file system', 350469, 350773).
predicate(delete_directory, 1, 'Remove a folder from the file system', 350776, 351041).
predicate(working_directory, 2, 'Query/change CWD', 351044, 351413).
predicate(chdir, 1, 'Compatibility: change working directory', 351416, 351524).
predicate(break, 0, 'Start interactive toplevel', 351618, 352142).
predicate(abort, 0, 'Abort execution, return to top level', 352145, 353109).
predicate(halt, 0, 'Exit from Prolog', 353112, 353454).
predicate(halt, 1, 'Exit from Prolog with status', 353457, 353601).
predicate(prolog, 0, 'Run interactive toplevel', 353604, 354124).
predicate(expand_query, 4, 'Expanded entered query', 354127, 354839).
predicate(expand_answer, 2, 'Expand answer of query', 354842, 355314).
predicate(protocol, 1, 'Make a log of the user interaction', 355640, 355843).
predicate(protocola, 1, 'Append log of the user interaction to file', 355846, 355988).
predicate(noprotocol, 0, 'Disable logging of user interaction', 355991, 356120).
predicate(protocolling, 1, 'On what file is user interaction logged', 356123, 356322).
predicate(trace, 0, 'Start the tracer', 356705, 356894).
predicate(tracing, 0, 'Query status of the tracer', 356897, 357034).
predicate(notrace, 0, 'Stop tracing', 357037, 357128).
predicate(guitracer, 0, 'Install hooks for the graphical debugger', 357131, 357430).
predicate(noguitracer, 0, 'Disable the graphical debugger', 357433, 357507).
predicate(trace, 1, 'Set trace-point on predicate', 357510, 357584).
predicate(trace, 2, 'Set/Clear trace-point on ports', 357587, 358673).
predicate(notrace, 1, 'Do not debug argument goal', 358676, 358996).
predicate(debug, 0, 'Test for debugging mode', 358999, 359289).
predicate(nodebug, 0, 'Disable debugging', 359292, 359400).
predicate(debugging, 0, 'Show debugger status', 359403, 359536).
predicate(spy, 1, 'Force tracer on specified predicate', 359539, 359693).
predicate(nospy, 1, 'Remove spy point', 359696, 359838).
predicate(nospyall, 0, 'Remove all spy points', 359841, 359917).
predicate(leash, 1, 'Change ports visited by the tracer', 359920, 360529).
predicate(visible, 1, 'Ports that are visible in the tracer', 360532, 360700).
predicate(unknown, 2, 'Trap undefined predicates', 360703, 360992).
predicate(style_check, 1, 'Change level of warnings', 360995, 363094).
predicate(statistics, 2, 'Obtain collected statistics', 363194, 367967).
predicate(statistics, 0, 'Show execution statistics', 367970, 368072).
predicate(time, 1, 'Determine time needed to execute goal', 368075, 368520).
predicate(profile, 1, 'Obtain execution statistics', 369453, 369723).
predicate(profile, 3, 'Obtain execution statistics', 369726, 370340).
predicate(show_profile, 2, 'Show results of the profiler', 370343, 370953).
predicate(show_profile, 1, 'Show results of the profiler', 370956, 371101).
predicate(profiler, 2, 'Obtain/change status of the profiler', 371104, 371416).
predicate(reset_profiler, 0, 'Clear statistics obtained by the profiler', 371419, 371534).
predicate(noprofile, 1, 'Hide (meta) predicate for the profiler', 371537, 371958).
predicate(garbage_collect, 0, 'Invoke the garbage collector', 378183, 378626).
predicate(garbage_collect_atoms, 0, 'Invoke the atom garbage collector', 378629, 379182).
predicate(limit_stack, 2, 'Limit stack expansion', 379185, 379892).
predicate(trim_stacks, 0, 'Release unused memory resources', 379895, 380611).
predicate(stack_parameter, 4, 'Some systems: Query/Set runtime stack parameter', 380614, 381367).
predicate(open_dde_conversation, 3, 'Win32: Open DDE channel', 382496, 382898).
predicate(close_dde_conversation, 1, 'Win32: Close DDE channel', 382901, 383243).
predicate(dde_request, 3, 'Win32: Make a DDE request', 383246, 383934).
predicate(dde_execute, 2, 'Win32: Execute command on DDE server', 383937, 384195).
predicate(dde_poke, 3, 'Win32: POKE operation on DDE server', 384198, 384417).
predicate(dde_register_service, 2, 'Win32: Become a DDE server', 384832, 386490).
predicate(dde_unregister_service, 1, 'Win32: Terminate a DDE service', 386493, 386727).
predicate(dde_current_service, 2, 'Win32: Examine DDE services provided', 386730, 386910).
predicate(dde_current_connection, 2, 'Win32: Examine open DDE connections', 386913, 387071).
predicate(dwim_match, 2, 'Atoms match in ``Do What I Mean'''' sense', 387130, 387782).
predicate(dwim_match, 3, 'Atoms match in ``Do What I Mean'''' sense', 387785, 388226).
predicate(wildcard_match, 2, 'Csh(1) style wildcard match', 388229, 388945).
predicate(gensym, 2, 'Generate unique atoms from a base', 388948, 389304).
predicate(sleep, 1, 'Suspend execution for specified time', 389307, 389950).
predicate(use_module, 1, 'Import a module', 395223, 395791).
predicate(use_module, 2, 'Import predicates from a module', 395794, 396341).
predicate(import, 1, 'Import a predicate from a module', 396344, 397464).
predicate(module, 2, 'Declare a module', 407530, 407933).
predicate((module_transparent), 1, 'Indicate module based meta predicate', 407936, 408260).
predicate((meta_predicate), 1, 'Quintus compatibility', 408263, 408470).
predicate(current_module, 1, 'Examine existing modules', 408473, 408586).
predicate(current_module, 2, 'Examine existing modules', 408589, 408845).
predicate(context_module, 1, 'Get context module of current goal', 408848, 409047).
predicate(export, 1, 'Export a predicate from a module', 409050, 409438).
predicate(export_list, 2, 'List of public predicates of a module', 409441, 409776).
predicate(import_module, 2, 'Query import modules', 409779, 410154).
predicate(add_import_module, 3, 'Add module to the auto-import list', 410157, 410536).
predicate(delete_import_module, 2, 'Remove module from import list', 410539, 410804).
predicate(default_module, 2, 'Get the default modules of a module', 410807, 411283).
predicate(module, 1, 'Query/set current type-in module', 411286, 411681).
predicate(thread_create, 3, 'Create a new Prolog task', 417337, 420042).
predicate(thread_self, 1, 'Get identifier of current thread', 420045, 420220).
predicate(thread_join, 2, 'Wait for Prolog task-completion', 420223, 421461).
predicate(thread_detach, 1, 'Make thread cleanup after completion', 421464, 422257).
predicate(thread_exit, 1, 'Terminate Prolog task with value', 422260, 422681).
predicate(thread_at_exit, 1, 'Register goal to be called at exit', 422684, 423161).
predicate(thread_setconcurrency, 2, 'Number of active threads', 423164, 423695).
predicate(current_thread, 2, 'Examine Prolog threads', 424286, 425528).
predicate(thread_statistics, 3, 'Get statistics of another thread', 425531, 425916).
predicate(mutex_statistics, 0, 'Print statistics on mutex usage', 425919, 426524).
predicate(thread_send_message, 2, 'Send message to another thread', 427176, 428290).
predicate(thread_get_message, 1, 'Wait for message', 428293, 429050).
predicate(thread_peek_message, 1, 'Test for message', 429053, 429451).
predicate(message_queue_create, 1, 'Create queue for thread communication', 429454, 429828).
predicate(message_queue_destroy, 1, 'Destroy queue for thread communication', 429831, 430192).
predicate(thread_get_message, 2, 'Wait for message in a queue', 430195, 430438).
predicate(thread_get_message, 2, 'Wait for message in a queue', 430441, 431792).
predicate(thread_signal, 2, 'Execute goal in another thread', 432492, 433600).
predicate((thread_local), 1, 'Declare thread-specific clauses for a predicate', 434597, 436006).
predicate(mutex_create, 1, 'Create a thread-synchronisation device', 437374, 437679).
predicate(mutex_destroy, 1, 'Destroy a mutex', 437682, 437898).
predicate(with_mutex, 2, 'Run goal while holding mutex', 437901, 438553).
predicate(mutex_lock, 1, 'Become owner of a mutex', 438556, 439677).
predicate(mutex_trylock, 1, 'Become owner of a mutex (non-blocking)', 439680, 439858).
predicate(mutex_unlock, 1, 'Release ownership of mutex', 439861, 440099).
predicate(mutex_unlock_all, 0, 'Release ownership of all mutexes', 440102, 440340).
predicate(current_mutex, 3, 'Examine existing mutexes', 440343, 440772).
predicate(threads, 0, 'List running threads', 441050, 441273).
predicate(interactor, 0, 'Start new thread with console and toplevel', 441276, 441518).
predicate(attach_console, 0, 'Attach I/O console to thread', 441521, 442268).
predicate(pce_dispatch, 1, 'Run XPCE GUI in seperate thread', 452852, 453340).
predicate(pce_call, 1, 'Run goal in XPCE GUI thread', 453343, 453852).
predicate(open_shared_object, 2, 'UNIX: Open shared library (.so file)', 458855, 459473).
predicate(open_shared_object, 3, 'UNIX: Open shared library (.so file)', 459476, 460156).
predicate(close_shared_object, 1, 'UNIX:  Close shared library (.so file)', 460159, 460307).
predicate(call_shared_object_function, 2, 'UNIX:  Call C-function in shared (.so) file', 460310, 460705).
predicate(load_foreign_library, 2, 'library(shlib) Load shared library (.so file)', 461040, 462139).
predicate(load_foreign_library, 1, 'library(shlib) Load shared library (.so file)', 462142, 462593).
predicate(unload_foreign_library, 1, 'library(shlib) Detach shared library (.so file)', 462596, 463031).
predicate(current_foreign_library, 2, 'library(shlib) Examine loaded shared libraries (.so files)', 463034, 463979).
predicate(qsave_program, 2, 'Create runtime application', 586966, 590771).
predicate(qsave_program, 1, 'Create runtime application', 590774, 590878).
predicate(autoload, 0, 'Autoload all predicates now', 590881, 592545).
predicate((volatile), 1, 'Predicates that are not saved', 592548, 592901).
predicate(resource, 3, 'Declare a program resource', 597895, 599677).
predicate(open_resource, 3, 'Open a program resource as a stream', 599680, 600823).
predicate(append, 3, 'Concatenate lists', 608063, 608354).
predicate(member, 2, 'Element is member of a list', 608357, 608567).
predicate(nextto, 3, 'Y follows X in List', 608570, 608681).
predicate(delete, 3, 'Delete all matching members from a list', 608684, 608902).
predicate(select, 3, 'Select element of a list', 608905, 609248).
predicate(nth0, 3, 'N-th element of a list (0-based)', 609251, 609451).
predicate(nth1, 3, 'N-th element of a list (1-based)', 609454, 609654).
predicate(last, 2, 'Last element of a list', 609657, 609944).
predicate(reverse, 2, 'Inverse the order of the elements in a list', 609947, 610140).
predicate(permutation, 2, 'Test/generate permutations of a list', 610143, 610504).
predicate(flatten, 2, 'Transform nested list into flat list', 610507, 610857).
predicate(sumlist, 2, 'Add all numbers in a list', 610860, 611114).
predicate(numlist, 3, 'Create list of integers in interval', 611117, 611338).
predicate(is_set, 1, 'Type check for a set', 611407, 611516).
predicate(list_to_set, 2, 'Remove duplicates', 611519, 611847).
predicate(intersection, 3, 'Set intersection', 611850, 612145).
predicate(subtract, 3, 'Delete elements that do not satisfy condition', 612148, 612347).
predicate(union, 3, 'Union of two sets', 612350, 612604).
predicate(subset, 2, 'Check subset relation for unordered sets', 612607, 612755).
predicate(check, 0, 'Program completeness and consistency', 612983, 613361).
predicate(list_undefined, 0, 'List undefined predicates', 613364, 614660).
predicate(list_autoload, 0, 'List predicates that require autoload', 614663, 614905).
predicate(list_redefined, 0, 'List locally redefined predicates', 614908, 615153).
predicate(debug, 3, 'Print debugging message on topic', 616025, 616585).
predicate(debugging, 1, 'Test where we are debugging topic', 616588, 616923).
predicate(debug, 1, 'Select topic for debugging', 616926, 617183).
predicate(nodebug, 1, 'Disable debug-topic', 617186, 617302).
predicate(list_debug_topics, 0, 'List registered topics for debugging', 617305, 617447).
predicate(assume, 1, 'Make assertions about your program', 617450, 617976).
predicate(read_line_to_codes, 2, 'Read line from a stream', 618173, 618681).
predicate(read_line_to_codes, 3, 'Read line from a stream', 618684, 619614).
predicate(read_stream_to_codes, 2, 'Read contents of stream', 619617, 619805).
predicate(read_stream_to_codes, 3, 'Read contents of stream', 619808, 619992).
predicate(read_file_to_codes, 3, 'Read contents of file', 619995, 620477).
predicate(read_file_to_terms, 3, 'Read contents of file to Prolog terms', 620480, 620993).
predicate(www_open_url, 1, 'Open a web-page in a browser', 621229, 622380).
predicate(registry_get_key, 2, 'Get principal value of key', 623282, 623487).
predicate(registry_get_key, 3, 'Get associated value of key', 623490, 623647).
predicate(registry_set_key, 2, 'Set principal value of key', 623650, 623859).
predicate(registry_set_key, 3, 'Set associated value of key', 623862, 624082).
predicate(registry_delete_key, 1, 'Remove a key', 624085, 624194).
predicate(shell_register_file_type, 4, 'Register a file-type', 624197, 624733).
predicate(shell_register_dde, 6, 'Register DDE action', 624736, 625447).
predicate(shell_register_prolog, 1, 'Register Prolog', 625450, 626260).
predicate(parse_url, 2, 'Analyse or construct a URL', 627125, 629602).
predicate(parse_url, 3, 'Analyse or construct a relative URL', 629605, 629908).
predicate(global_url, 3, 'Make relative URL global', 629911, 630087).
predicate(http_location, 2, 'Analyse or construct location', 630090, 630545).
predicate(www_form_encode, 2, 'Encode or decode form-data', 630548, 631040).
predicate(prolog_current_frame, 1, 'Reference to goal''s environment stack', 631641, 632050).
predicate(prolog_frame_attribute, 3, 'Obtain information on a goal environment', 632053, 635710).
predicate(prolog_choice_attribute, 3, 'Examine the choice-point stack', 635713, 636761).
predicate(deterministic, 1, 'Test deterministicy of current clause', 636764, 637153).
predicate(prolog_trace_interception, 4, 'library(user) Intercept the Prolog tracer', 637238, 640775).
predicate(prolog_skip_level, 2, 'Indicate deepest recursion to trace', 640778, 641438).
predicate(exception, 3, 'Hook (user) Handle runtime exceptions', 642059, 643534).
predicate(prolog_list_goal, 1, 'Hook (user) Intercept tracer ''L'' command', 644023, 644442).
predicate(debug_control_hook, 1, 'Hook (prolog) Extend spy/1, etc.', 644445, 645688).
predicate(help_hook, 1, 'Hook (prolog) User-hook in the help-system', 645691, 646347).
predicate(prolog_load_file, 2, 'Hook (user) Program load_files/2', 646642, 647080).
predicate(rl_read_init_file, 1, 'Read readline(3) init file', 647390, 647644).
predicate(rl_add_history, 1, 'Add line to readline(3) history', 647647, 647806).
predicate(eval_license, 0, 'Evaluate licenses of loaded modules', 665929, 666308).
predicate(license, 2, 'Define license for named module', 666311, 668669).
predicate(license, 1, 'Define license for current file', 668672, 668845).


%   Predicate section/4

section([0], 'Title Page', 1, 1992).
section([1], 'INTRODUCTION', 1994, 30219).
section([1, 1], 'SWI-Prolog', 2064, 5079).
section([1, 1, 1], 'Books about Prolog', 4196, 5079).
section([1, 2], 'Status', 5081, 5764).
section([1, 3], 'Compliance to the ISO standard', 5766, 6626).
section([1, 4], 'Should you be using SWI-Prolog?', 6628, 10041).
section([1, 5], 'The XPCE GUI system for Prolog', 10043, 12996).
section([1, 6], 'Release Notes', 12998, 28691).
section([1, 6, 1], 'Version 1.8 Release Notes', 13256, 13519).
section([1, 6, 2], 'Version 1.9 Release Notes', 13521, 14481).
section([1, 6, 3], 'Version 2.0 Release Notes', 14483, 15439).
section([1, 6, 4], 'Version 2.5 Release Notes', 15441, 17095).
section([1, 6, 5], 'Version 2.6 Release Notes', 17097, 18380).
section([1, 6, 6], 'Version 2.7 Release Notes', 18382, 19067).
section([1, 6, 7], 'Version 2.8 Release Notes', 19069, 19605).
section([1, 6, 8], 'Version 2.9 Release Notes', 19607, 20427).
section([1, 6, 9], 'Version 3.0 Release Notes', 20429, 20688).
section([1, 6, 10], 'Version 3.1 Release Notes', 20690, 21082).
section([1, 6, 11], 'Version 3.3 Release Notes', 21084, 25496).
section([1, 6, 11, 1], 'Incompatible changes', 22893, 25496).
section([1, 6, 12], 'Version 3.4 Release Notes', 25498, 26549).
section([1, 6, 13], 'Version 4.0 Release Notes', 26551, 27396).
section([1, 6, 14], 'Version 5.0 Release Notes', 27398, 28093).
section([1, 6, 15], 'Version 5.1 Release Notes', 28095, 28469).
section([1, 6, 16], 'Version 5.2 Release Notes', 28471, 28691).
section([1, 7], 'Donate to the SWI-Prolog project', 28693, 29072).
section([1, 8], 'Acknowledgements', 29074, 30219).
section([2], 'OVERVIEW', 30221, 107417).
section([2, 1], 'Getting started quickly', 30279, 33423).
section([2, 1, 1], 'Starting SWI-Prolog', 30358, 32720).
section([2, 1, 1, 1], 'Starting SWI-Prolog on Unix', 30433, 31711).
section([2, 1, 1, 2], 'Starting SWI-Prolog on Windows', 31713, 32720).
section([2, 1, 2], 'Executing a query', 32722, 33423).
section([2, 2], 'The user''s initialisation file', 33425, 34823).
section([2, 3], 'Initialisation files and goals', 34825, 36349).
section([2, 4], 'Command line options', 36351, 43365).
section([2, 5], 'GNU Emacs Interface', 43367, 44127).
section([2, 6], 'Online Help', 44129, 47532).
section([2, 7], 'Query Substitutions', 47534, 49880).
section([2, 7, 1], 'Limitations of the History System', 49305, 49880).
section([2, 8], 'Reuse of toplevel bindings', 49882, 50904).
section([2, 9], 'Overview of the Debugger', 50906, 56985).
section([2, 10], 'Compilation', 56987, 63237).
section([2, 10, 1], 'During program development', 57037, 58011).
section([2, 10, 2], 'For running the result', 58013, 63237).
section([2, 10, 2, 1], 'Using PrologScript', 58381, 60562).
section([2, 10, 2, 2], 'Creating a shell-script', 60564, 61565).
section([2, 10, 2, 3], 'Creating a saved-state', 61567, 62240).
section([2, 10, 2, 4], 'Compilation using the -c commandline option', 62242, 63237).
section([2, 11], 'Environment Control (Prolog flags)', 63239, 87286).
section([2, 12], 'An overview of hook predicates', 87288, 89423).
section([2, 13], 'Automatic loading of libraries', 89425, 94224).
section([2, 14], 'Garbage Collection', 94226, 94469).
section([2, 15], 'Syntax Notes', 94471, 98924).
section([2, 15, 1], 'ISO Syntax Support', 95223, 98924).
section([2, 15, 1, 1], 'Character Escape Syntax', 95366, 98379).
section([2, 15, 1, 2], 'Syntax for non-decimal numbers', 98381, 98924).
section([2, 16], 'System limits', 98926, 107417).
section([2, 16, 1], 'Limits on memory areas', 98980, 105542).
section([2, 16, 1, 1], 'The heap', 104851, 105542).
section([2, 16, 2], 'Other Limits', 105544, 106962).
section([2, 16, 3], 'Reserved Names', 106964, 107417).
section([3], 'INITIALISING AND MANAGING A PROLOG PROJECT', 107419, 135398).
section([3, 1], 'The project source-files', 108237, 113772).
section([3, 1, 1], 'File Names and Locations', 108733, 112346).
section([3, 1, 1, 1], 'File Name Extensions', 108819, 109848).
section([3, 1, 1, 2], 'Project Directories', 109850, 110935).
section([3, 1, 1, 3], 'Sub-projects using search-paths', 110937, 112346).
section([3, 1, 2], 'Project Special Files', 112348, 113772).
section([3, 2], 'Using modules', 113774, 115915).
section([3, 3], 'The test-edit-reload cycle', 115917, 118878).
section([3, 3, 1], 'Locating things to edit', 116801, 117458).
section([3, 3, 2], 'Editing and incremental compilation', 117460, 118878).
section([3, 4], 'Using the PceEmacs built-in editor', 118880, 130132).
section([3, 4, 1], 'Activating PceEmacs', 118988, 119346).
section([3, 4, 2], 'Bluffing through PceEmacs', 119348, 124850).
section([3, 4, 2, 1], 'Edit modes', 119968, 120989).
section([3, 4, 2, 2], 'Frequently used editor commands', 120991, 124850).
section([3, 4, 3], 'Prolog Mode', 124852, 130132).
section([3, 4, 3, 1], 'Finding your way around', 129497, 130132).
section([3, 5], 'The Graphical Debugger', 130134, 132028).
section([3, 5, 1], 'Invoking the window-based debugger', 130988, 132028).
section([3, 6], 'The Prolog Navigator', 132030, 132361).
section([3, 7], 'Accessing the IDE from your program', 132363, 133675).
section([3, 8], 'Summary of the iDE', 133677, 135398).
section([4], 'BUILT-IN PREDICATES', 135400, 389951).
section([4, 1], 'Notation of Predicate Descriptions', 135489, 136290).
section([4, 2], 'Character representation', 136292, 139237).
section([4, 3], 'Loading Prolog source files', 139239, 160816).
section([4, 3, 1], 'Quick load files', 158841, 160816).
section([4, 4], 'Listing and Editor Interface', 160818, 167906).
section([4, 5], 'Verify Type of a Term', 167908, 169262).
section([4, 6], 'Comparison and Unification or Terms', 169264, 173036).
section([4, 6, 1], 'Standard Order of Terms', 169375, 173036).
section([4, 7], 'Control Predicates', 173038, 176965).
section([4, 8], 'Meta-Call Predicates', 176967, 183555).
section([4, 9], 'ISO compliant Exception handling', 183557, 192886).
section([4, 9, 1], 'Debugging and exceptions', 186080, 188161).
section([4, 9, 2], 'The exception term', 188163, 189016).
section([4, 9, 3], 'Printing messages', 189018, 192886).
section([4, 10], 'Handling signals', 192888, 198642).
section([4, 10, 1], 'Notes on signal handling', 196787, 198642).
section([4, 11], 'The `block'' control-structure', 198644, 200152).
section([4, 12], 'DCG Grammar rules', 200154, 202270).
section([4, 13], 'Database', 202272, 211632).
section([4, 13, 1], 'Update view', 209409, 210614).
section([4, 13, 2], 'Indexing databases', 210616, 211632).
section([4, 14], 'Declaring predicates properties', 211634, 215841).
section([4, 15], 'Examining the program', 215843, 224837).
section([4, 16], 'Input and output', 224839, 243227).
section([4, 16, 1], 'ISO Input and Output Streams', 225516, 237989).
section([4, 16, 2], 'Edinburgh-style I/O', 237991, 242353).
section([4, 16, 3], 'Switching Between Edinburgh and ISO I/O', 242355, 243227).
section([4, 17], 'Status of streams', 243229, 246925).
section([4, 18], 'Primitive character I/O', 246927, 253633).
section([4, 19], 'Term reading and writing', 253635, 267379).
section([4, 20], 'Analysing and Constructing Terms', 267381, 271577).
section([4, 21], 'Analysing and Constructing Atoms', 271579, 279639).
section([4, 22], 'Classifying characters', 279641, 285129).
section([4, 22, 1], 'Case conversion', 284269, 285129).
section([4, 23], 'Representing text in strings', 285131, 289467).
section([4, 24], 'Operators', 289469, 293535).
section([4, 25], 'Character Conversion', 293537, 294456).
section([4, 26], 'Arithmetic', 294458, 298424).
section([4, 27], 'Arithmetic Functions', 298426, 306467).
section([4, 28], 'Adding Arithmetic Functions', 306469, 308340).
section([4, 29], 'Built-in list operations', 308342, 311793).
section([4, 30], 'Finding all Solutions to a Goal', 311795, 313772).
section([4, 31], 'Invoking Predicates on all Members of a List', 313774, 315050).
section([4, 32], 'Forall', 315052, 315494).
section([4, 33], 'Formatted Write', 315496, 327140).
section([4, 33, 1], 'Writef', 316042, 319867).
section([4, 33, 2], 'Format', 319869, 325468).
section([4, 33, 3], 'Programming Format', 325470, 327140).
section([4, 34], 'Terminal Control', 327142, 329849).
section([4, 35], 'Operating System Interaction', 329851, 340407).
section([4, 35, 1], 'Dealing with time and date', 335672, 337570).
section([4, 35, 2], 'Controlling the PLWIN.EXE console window', 337572, 340407).
section([4, 36], 'File System Interaction', 340409, 351525).
section([4, 37], 'User Toplevel Manipulation', 351527, 355315).
section([4, 38], 'Creating a Protocol of the User Interaction', 355317, 356323).
section([4, 39], 'Debugging and Tracing Programs', 356325, 363095).
section([4, 40], 'Obtaining Runtime Statistics', 363097, 368521).
section([4, 41], 'Execution profiling', 368523, 377918).
section([4, 41, 1], 'Profiling predicates', 369089, 371959).
section([4, 41, 2], 'Visualizing profiling data', 371961, 374421).
section([4, 41, 3], 'Information gathering', 374423, 377918).
section([4, 41, 3, 1], 'Profiling in the Windows Implementation', 376453, 377918).
section([4, 42], 'Memory Management', 377920, 381368).
section([4, 43], 'Windows DDE interface', 381370, 387072).
section([4, 43, 1], 'DDE client interface', 381768, 384418).
section([4, 43, 2], 'DDE server mode', 384420, 387072).
section([4, 44], 'Miscellaneous', 387074, 389951).
section([5], 'USING MODULES', 389953, 415118).
section([5, 1], 'Why Using Modules?', 390024, 391254).
section([5, 2], 'Name-based versus Predicate-based Modules', 391256, 393849).
section([5, 3], 'Defining a Module', 393851, 394479).
section([5, 4], 'Importing Predicates into a Module', 394481, 398260).
section([5, 4, 1], 'Reserved Modules', 397467, 398260).
section([5, 5], 'Using the Module System', 398262, 401877).
section([5, 5, 1], 'Object Oriented Programming', 400248, 401877).
section([5, 6], 'Meta-Predicates in Modules', 401879, 405896).
section([5, 6, 1], 'Definition and Context Module', 402965, 404554).
section([5, 6, 2], 'Overruling Module Boundaries', 404556, 405896).
section([5, 7], 'Dynamic Modules', 405898, 407334).
section([5, 8], 'Module Handling Predicates', 407336, 411682).
section([5, 9], 'Compatibility of the Module System', 411684, 415118).
section([5, 9, 1], 'Emulating meta_predicate/1', 414188, 415118).
section([6], 'MULTI-THREADED APPLICATIONS', 415120, 454458).
section([6, 1], 'Creating and destroying Prolog threads', 417217, 423696).
section([6, 2], 'Monitoring threads', 423698, 426525).
section([6, 3], 'Thread communication', 426527, 436007).
section([6, 3, 1], 'Message queues', 426599, 431793).
section([6, 3, 2], 'Signalling threads', 431795, 433601).
section([6, 3, 3], 'Threads and dynamic predicates', 433603, 436007).
section([6, 4], 'Thread synchronisation', 436009, 440773).
section([6, 5], 'Thread-support library(threadutil)', 440775, 442269).
section([6, 6], 'Multi-threaded mixed C and Prolog applications', 442271, 451908).
section([6, 6, 1], 'A Prolog thread for each native thread (one-to-one)', 443895, 447608).
section([6, 6, 2], 'Pooling Prolog engines (many-to-many)', 447610, 451908).
section([6, 6, 2, 1], 'Engines in single-threaded SWI-Prolog', 451549, 451908).
section([6, 7], 'Multithreading and the XPCE graphics system', 451910, 453853).
section([6, 8], 'Threaded Prolog:  Status and plans', 453855, 454458).
section([7], 'FOREIGN LANGUAGE INTERFACE', 454460, 585688).
section([7, 1], 'Overview of the Interface', 455506, 456354).
section([7, 2], 'Linking Foreign Modules', 456356, 458343).
section([7, 2, 1], 'What linking is provided?', 456988, 457480).
section([7, 2, 2], 'What kind of loading should I be using?', 457482, 458343).
section([7, 3], 'Dynamic Linking of shared libraries', 458345, 460706).
section([7, 4], 'Using the library shlib for .DLL and .so files', 460708, 466105).
section([7, 4, 1], 'Static Linking', 463982, 466105).
section([7, 5], 'Interface Data types', 466107, 474020).
section([7, 5, 1], 'Type term_t:  a reference to a Prolog term', 466177, 472028).
section([7, 5, 1, 1], 'Interaction with the garbage collector and stack-shifter', 471240, 472028).
section([7, 5, 2], 'Other foreign interface types', 472030, 474020).
section([7, 6], 'The Foreign Include File', 474022, 570101).
section([7, 6, 1], 'Argument Passing and Control', 474102, 480027).
section([7, 6, 1, 1], 'Non-deterministic Foreign Predicates', 474947, 480027).
section([7, 6, 2], 'Atoms and functors', 480029, 483099).
section([7, 6, 2, 1], 'Atoms and atom-garbage collection', 481594, 483099).
section([7, 6, 3], 'Analysing Terms via the Foreign Interface', 483101, 500269).
section([7, 6, 3, 1], 'Testing the type of a term', 483854, 487209).
section([7, 6, 3, 2], 'Reading data from a term', 487211, 494490).
section([7, 6, 3, 3], 'Exchanging text using length and string', 494492, 497757).
section([7, 6, 3, 4], 'Reading a list', 497759, 499067).
section([7, 6, 3, 5], 'An example:  defining write/1 in C', 499069, 500269).
section([7, 6, 4], 'Constructing Terms', 500271, 506025).
section([7, 6, 5], 'Unifying data', 506027, 517525).
section([7, 6, 6], 'Calling Prolog from C', 517527, 524535).
section([7, 6, 6, 1], 'Predicate references', 518211, 519735).
section([7, 6, 6, 2], 'Initiating a query from C', 519737, 524535).
section([7, 6, 7], 'Discarding Data', 524537, 526844).
section([7, 6, 8], 'Foreign Code and Modules', 526846, 528546).
section([7, 6, 9], 'Prolog exceptions in foreign code', 528548, 532761).
section([7, 6, 10], 'Catching Signals (Software Interrupts)', 532763, 535945).
section([7, 6, 11], 'Miscellaneous', 535947, 542281).
section([7, 6, 11, 1], 'Term Comparison', 536009, 536501).
section([7, 6, 11, 2], 'Recorded database', 536503, 540792).
section([7, 6, 11, 3], 'Getting file names', 540794, 542281).
section([7, 6, 12], 'Errors and warnings', 542283, 542952).
section([7, 6, 13], 'Environment Control from Foreign Code', 542954, 545939).
section([7, 6, 14], 'Querying Prolog', 545941, 547567).
section([7, 6, 15], 'Registering Foreign Predicates', 547569, 550675).
section([7, 6, 16], 'Foreign Code Hooks', 550677, 553632).
section([7, 6, 17], 'Storing foreign data', 553634, 562229).
section([7, 6, 17, 1], 'Examples for storing foreign data', 557142, 562229).
section([7, 6, 18], 'Embedding SWI-Prolog in other applications', 562231, 570101).
section([7, 6, 18, 1], 'Threading, Signals and embedded Prolog', 567801, 570101).
section([7, 7], 'Linking embedded applications using plld', 570103, 577260).
section([7, 7, 1], 'A simple example', 575590, 577260).
section([7, 8], 'The Prolog `home'' directory', 577262, 578738).
section([7, 9], 'Example of Using the Foreign Interface', 578740, 580216).
section([7, 10], 'Notes on Using Foreign Code', 580218, 585688).
section([7, 10, 1], 'Memory Allocation', 580308, 581852).
section([7, 10, 2], 'Compatibility between Prolog versions', 581854, 582539).
section([7, 10, 3], 'Debugging Foreign Code', 582541, 583407).
section([7, 10, 4], 'Name Conflicts in C modules', 583409, 584280).
section([7, 10, 5], 'Compatibility of the Foreign Interface', 584282, 585688).
section([8], 'GENERATING RUNTIME APPLICATIONS', 585690, 606320).
section([8, 1], 'Limitations of qsave_program', 592904, 593702).
section([8, 2], 'Runtimes and Foreign Code', 593704, 596112).
section([8, 3], 'Using program resources', 596114, 601782).
section([8, 3, 1], 'Predicates Definitions', 597811, 600824).
section([8, 3, 2], 'The plrc program', 600826, 601782).
section([8, 4], 'Finding Application files', 601784, 603644).
section([8, 4, 1], 'Passing a path to the application', 603061, 603644).
section([8, 5], 'The Runtime Environment', 603646, 606320).
section([8, 5, 1], 'The Runtime Emulator', 603725, 606320).
section([9], 'THE SWI-PROLOG LIBRARY', 606322, 631041).
section([9, 1], 'lists:  List Manipulation', 607776, 612756).
section([9, 1, 1], 'Set Manipulation', 611341, 612756).
section([9, 2], 'check:  Elementary completeness checks', 612758, 615154).
section([9, 3], 'debug:  Some reusable code to help debugging applications', 615156, 617977).
section([9, 4], 'readutil:  Reading lines, streams and files', 617979, 620994).
section([9, 5], 'netscape:  Activating your Web-browser', 620996, 622381).
section([9, 6], 'registry:  Manipulating the Windows registry', 622383, 626261).
section([9, 7], 'url:  Analysing and constructing URL', 626263, 631041).
section([10], 'HACKERS CORNER', 631043, 647807).
section([10, 1], 'Examining the Environment Stack', 631537, 637154).
section([10, 2], 'Intercepting the Tracer', 637156, 641439).
section([10, 3], 'Hooks using the exception/3 predicate', 641441, 643535).
section([10, 4], 'Hooks for integrating libraries', 643537, 646348).
section([10, 5], 'Hooks for loading files', 646350, 647081).
section([10, 6], 'Readline Interaction', 647083, 647807).
section([11], 'GLOSSARY OF TERMS', 647809, 660703).
section([12], 'SWI-PROLOG LICENSE CONDITIONS AND TOOLS', 660705, 669139).
section([12, 1], 'The SWI-Prolog kernel and foreign libraries', 662193, 664693).
section([12, 1, 1], 'The SWI-Prolog Prolog libraries', 663012, 664693).
section([12, 2], 'Contributing to the SWI-Prolog project', 664695, 665261).
section([12, 3], 'Software support to keep track of license conditions', 665263, 669139).
section([13], 'SUMMARY', 669141, 706937).
section([13, 1], 'Predicates', 669199, 699880).
section([13, 2], 'Library predicates', 699882, 702162).
section([13, 2, 1], lists, 699951, 700825).
section([13, 2, 2], check, 700827, 701062).
section([13, 2, 3], readutil, 701064, 701389).
section([13, 2, 4], netscape, 701391, 701466).
section([13, 2, 5], registry, 701468, 701894).
section([13, 2, 6], url, 701896, 702162).
section([13, 3], 'Arithmetic Functions', 702164, 704251).
section([13, 4], 'Operators', 704253, 706937).
section([14], 'Bibliography', 706939, 745678).


%   Predicate function/3

function('PL_thread_self', 444547, 444831).
function('PL_thread_attach_engine', 444834, 446250).
function('PL_thread_destroy_engine', 446253, 446863).
function('PL_thread_at_exit', 446866, 447607).
function('PL_create_engine', 449244, 449827).
function('PL_destroy_engine', 449830, 450171).
function('PL_set_engine', 450174, 451546).
function('PL_new_term_ref', 469319, 469692).
function('PL_new_term_refs', 469695, 470254).
function('PL_copy_term_ref', 470257, 470554).
function('PL_reset_term_refs', 470557, 471237).
function('PL_succeed', 474609, 474769).
function('PL_fail', 474772, 474944).
function('PL_retry', 477250, 477810).
function('PL_retry_address', 477813, 478145).
function('PL_foreign_control', 478148, 478513).
function('PL_foreign_context', 478516, 478881).
function('PL_foreign_context_address', 478884, 480026).
function('PL_new_atom', 480183, 480442).
function('PL_atom_chars', 480445, 481018).
function('PL_new_functor', 481021, 481307).
function('PL_functor_name', 481310, 481459).
function('PL_functor_arity', 481462, 481591).
function('PL_register_atom', 482236, 482496).
function('PL_unregister_atom', 482499, 483098).
function('PL_term_type', 483948, 485777).
function('PL_is_variable', 485780, 485899).
function('PL_is_atom', 485902, 486006).
function('PL_is_string', 486009, 486120).
function('PL_is_integer', 486123, 486239).
function('PL_is_float', 486242, 486349).
function('PL_is_compound', 486352, 486476).
function('PL_is_functor', 486479, 486792).
function('PL_is_list', 486795, 486944).
function('PL_is_atomic', 486947, 487083).
function('PL_is_number', 487086, 487208).
function('PL_get_atom', 487499, 488018).
function('PL_get_atom_chars', 488021, 488419).
function('PL_get_string_chars', 488422, 488926).
function('PL_get_chars', 488929, 491263).
function('PL_get_list_chars', 491266, 491566).
function('PL_get_integer', 491569, 491861).
function('PL_get_long', 491864, 492187).
function('PL_get_bool', 492190, 492419).
function('PL_get_pointer', 492422, 492868).
function('PL_get_float', 492871, 493034).
function('PL_get_functor', 493037, 493344).
function('PL_get_name_arity', 493347, 493687).
function('PL_get_module', 493690, 493958).
function('PL_get_arg', 493961, 494210).
function('_PL_get_arg', 494213, 494489).
function('PL_get_atom_nchars', 495001, 495190).
function('PL_get_list_nchars', 495193, 495382).
function('PL_get_nchars', 495385, 495609).
function('PL_put_atom_nchars', 495612, 495811).
function('PL_put_string_nchars', 495814, 496021).
function('PL_put_list_ncodes', 496024, 496223).
function('PL_put_list_nchars', 496226, 496425).
function('PL_unify_atom_nchars', 496428, 496635).
function('PL_unify_string_nchars', 496638, 496853).
function('PL_unify_list_ncodes', 496856, 497058).
function('PL_unify_list_nchars', 497061, 497360).
function('PL_new_atom_nchars', 497363, 497582).
function('PL_atom_nchars', 497585, 497756).
function('PL_get_list', 498386, 498614).
function('PL_get_head', 498617, 498787).
function('PL_get_tail', 498790, 498960).
function('PL_get_nil', 498963, 499066).
function('PL_put_variable', 500875, 501233).
function('PL_put_atom', 501236, 501440).
function('PL_put_atom_chars', 501443, 501743).
function('PL_put_string_chars', 501746, 502009).
function('PL_put_string_nchars', 502012, 502409).
function('PL_put_list_chars', 502412, 502601).
function('PL_put_integer', 502604, 502747).
function('PL_put_pointer', 502750, 502992).
function('PL_put_float', 502995, 503144).
function('PL_put_functor', 503147, 503563).
function('PL_put_list', 503566, 503764).
function('PL_put_nil', 503767, 503875).
function('PL_put_term', 503878, 504029).
function('PL_cons_functor', 504032, 504873).
function('PL_cons_functor_v', 504876, 505261).
function('PL_cons_list', 505264, 506024).
function('PL_unify', 507068, 507218).
function('PL_unify_atom', 507221, 507382).
function('PL_unify_atom_chars', 507385, 507623).
function('PL_unify_list_chars', 507626, 507846).
function('PL_unify_string_chars', 507849, 508184).
function('PL_unify_string_nchars', 508187, 508643).
function('PL_unify_integer', 508646, 508792).
function('PL_unify_float', 508795, 508939).
function('PL_unify_pointer', 508942, 509169).
function('PL_unify_functor', 509172, 509534).
function('PL_unify_list', 509537, 510812).
function('PL_unify_nil', 510815, 510915).
function('PL_unify_arg', 510918, 511121).
function('PL_unify_term', 511124, 515871).
function('PL_chars_to_term', 515874, 516871).
function('PL_quote', 516874, 517524).
function('PL_pred', 518561, 518861).
function('PL_predicate', 518864, 519146).
function('PL_predicate_info', 519149, 519734).
function('PL_open_query', 520403, 522933).
function('PL_next_solution', 522936, 523294).
function('PL_cut_query', 523297, 523539).
function('PL_close_query', 523542, 523694).
function('PL_call_predicate', 523697, 524116).
function('PL_call', 524119, 524534).
function('PL_open_foreign_frame', 524951, 525330).
function('PL_close_foreign_frame', 525333, 525646).
function('PL_discard_foreign_frame', 525649, 525873).
function('PL_rewind_foreign_frame', 525876, 526843).
function('PL_context', 527053, 527198).
function('PL_strip_module', 527201, 528231).
function('PL_module_name', 528234, 528364).
function('PL_new_module', 528367, 528545).
function('PL_raise_exception', 531520, 532194).
function('PL_throw', 532197, 532398).
function('PL_exception', 532401, 532760).
function('PL_signal', 533731, 535290).
function('PL_handle_signals', 535293, 535944).
function('PL_compare', 536081, 536282).
function('PL_same_compound', 536285, 536500).
function('PL_record', 537338, 537668).
function('PL_recorded', 537671, 537971).
function('PL_erase', 537974, 539566).
function('PL_record_external', 539569, 540236).
function('PL_recorded_external', 540239, 540590).
function('PL_erase_external', 540593, 540791).
function('PL_get_file_name', 541161, 542280).
function('PL_warning', 542592, 542951).
function('PL_action', 543080, 545938).
function('PL_query', 546007, 547566).
function('PL_register_foreign', 547678, 549006).
function('PL_load_extensions', 549009, 549698).
function('PL_register_extensions', 549701, 550674).
function('PL_dispatch_hook', 550809, 551427).
function('PL_abort_hook', 551430, 551902).
function('PL_abort_unhook', 551905, 552115).
function('PL_on_halt', 552118, 552580).
function('PL_agc_hook', 552583, 553631).
function('PL_initialise', 563533, 565806).
function('PL_is_initialised', 565809, 566263).
function('PL_install_readline', 566266, 566589).
function('PL_toplevel', 566592, 566747).
function('PL_cleanup', 566750, 567484).
function('PL_halt', 567487, 567798).
function('PL_malloc', 581061, 581399).
function('PL_realloc', 581402, 581677).
function('PL_free', 581680, 581851).
function('PL_license', 668848, 669138).


