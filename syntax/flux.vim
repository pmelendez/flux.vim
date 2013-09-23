" Vim syntax file
" Language:	Flux
" Maintainer:	Pedro Melendez based on C++ by Ken Shan <ccshan@post.harvard.edu>
" Last Change:	2013 Sep 23

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Flux/C++ extentions
syn keyword cppStatement	new delete this friend using begin end
syn keyword cppAccess		public protected private external exclusive readwrite precedence detached
syn keyword cppAccess           abstract const
syn keyword cppStructure        instance source handle 
syn keyword cppType		int inline virtual explicit export bool wchar_t error pool guard size_t  
syn keyword cppType             char double float long 
syn keyword cppExceptions	throw try catch 
syn keyword cppOperator		operator typeid terminate
syn keyword cppOperator		as and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace node plugin initial
syn keyword cppNumber		NPOS 
syn keyword cppBoolean		true false
syn keyword cComment            included
syn match   cppStdType          "std\:\:[^ ^>^,]*" 
syn match   fluxFlow            "\[[^\[]*\]" contains=cSpecial
syn match   fluxOperator        "\v\=\>" 
syn match   fluxOperator        "\v\-\>" 
syn region  fluxIncluded        display contained start=+ + skip=+\\\\\|\\"+ end=+$+
syn match   fluxInclude         display "\s*include\s*" contains=fluxIncluded
syn region  fluxComment         start=+/\*+ end=+\*/+
syn match   fluxLabel           "[^\:]*:[^:]" 
syn match   fluxUserType        "\k*\:\:\k*"
"syn match   fluxUserType        "\k*\:\:\k*[\*]"
"syn match   fluxUserType        "\S*\:\:\S*[\;]"

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  
  hi def link cppAccess		Statement
  hi def link cppCast		Statement
  hi def link cppExceptions	Exception
  hi def link cppOperator	Operator
  hi def link cppStatement	Statement
  hi def link cppType		Type
  hi def link cppStdType        Type
  hi def link cppStorageClass	StorageClass
  hi def link cppStructure	Structure
  hi def link cppNumber		Number
  hi def link cppBoolean	Boolean
  hi def link fluxFlow          SpecialChar
  hi def link fluxOperator      Character
  hi def link fluxInclude       Macro
  hi def link fluxIncluded      String
  hi def link fluxComment       Comment
  hi def link fluxLabel         Label
  hi def link fluxUserType      Type

endif

let b:current_syntax = "flux"

" vim: ts=8
