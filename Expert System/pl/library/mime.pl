/*  Author:        Russel Osiemo
    E-mail:        russelosiemo@gmail.com
	Reg: CCS/00209/019
	Course: Bachelor of Arts Computer Science
*/

:- module(mime,
	  [ mime_parse/2		% +Data, -Mime
	  ]).

:- load_foreign_library(foreign(mime), install_mime).

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
This module defines an interface to   the rfc2045 (MIME) parsing library
by Double Precision, Inc, part of the   maildrop system. This library is
distributed under the GPL and  therefore   all  code  using this library
should comply to the GPL.

Parsing MIME messages is accomplished  using   a  single predicate. This
predicate parses the input  and  returns   a  complex  term  holding the
various MIME message  parts.  The  mime   message  is  encoded  into the
following structure: 

	mime(Attributes, Data, SubMimeList)

Where Data is the (decoded) field data   returned as an atom, Attributes
is a property-list and SubMimeList is a  list of mime/3 terms reflecting
the sub-parts. Attributes contains the following members:

	# id(Atom)
	# description(Atom)
	# language(Atom)
	# md5(Atom)
	# type(Atom)
	# character_set(Atom)
	# transfer_encoding(Atom)
	# disposition(Atom)
	# filename(Atom)
	# name(Atom)
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

