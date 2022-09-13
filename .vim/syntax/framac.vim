" Vim syntax file
" Language:     Frama-C annotations in C programs 
" Maintainers:  Anne Pacalet (anne.pacalet@inria.fr)
"
" Last Change: 
"              - 2009 Jul 01 - first very basic version included in c syntax
"              - 2010 Dec 09 - separate syntax file for Frama-C
"
" You can put this file in your .vim/syntax, and you have to modify (or create)
" .vim/after/syntax/c.vim and copy these lines :
"
" syn include @FC syntax/framac.vim
" syn region framacComment1 matchgroup=framacComment start="/\*@"rs=e-1 end="\*/ contains=@FC
" syn region framacComment2 matchgroup=framacComment start="//@"rs=e-1 end="\n" contains=@FC
"
" so you use the normal C syntax highlighting, 
" and enhance it with Frama-C annotations highlighting.
"-------------------------------------------------------------------------------

syn match framacStart ".@" 
syn match framacStart ".@." 
syn match framacStart "@." 

syn region framacCommentInComment start="//" end="\n" containedin=framacComment1 contained
syn region framacCommentInComment excludenl start="//" end="$" containedin=framacComment2 contained

"-------------------------------------------------------------------------------

syn match framacKeyword /complete behaviors/ 
syn match framacKeyword /disjoint behaviors/ 
syn keyword framacKeyword behavior 
syn keyword framacKeyword assumes 
syn keyword framacKeyword requires 
syn keyword framacKeyword ensures 
syn keyword framacKeyword exits 
syn keyword framacKeyword returns 
syn keyword framacKeyword continues 
syn keyword framacKeyword breaks 
syn keyword framacKeyword requires 
syn keyword framacKeyword assert 
syn keyword framacKeyword assigns 
syn keyword framacKeyword invariant 
syn keyword framacKeyword decreases 
syn keyword framacKeyword terminates 
syn match framacKeyword /global invariant/ 
syn match framacKeyword /loop invariant/ 
syn match framacKeyword /loop variant/ 
syn match framacKeyword /loop assigns/ 
syn match framacKeyword /logic type/ 
syn keyword framacKeyword predicate 
syn keyword framacKeyword logic 
syn keyword framacKeyword ghost 
syn keyword framacKeyword axiom 
syn keyword framacKeyword lemma 
syn keyword framacKeyword axiomatic 
syn keyword framacKeyword reads 
syn keyword framacKeyword inductive

syn match framacKeyword2 /\\true/ 
syn match framacKeyword2 /\\false/ 
syn match framacKeyword2 /\\nothing/ 
syn match framacKeyword2 /\\result/ 
syn match framacKeyword2 /\\from/ 
syn match framacKeyword2 /\\exit_status/ 
syn match framacKeyword2 /\\old/ 
syn match framacKeyword2 /\\at/ 

syn match framacKeyword2 /\\forall/ 
syn match framacKeyword2 "∀"
syn match framacKeyword2 /\\exists/ 
syn match framacKeyword2 "∃"
syn match framacKeyword2 /\\let/ 
syn match framacKeyword2 /\\valid/ 
syn match framacKeyword2 /\\valid_read/ 
syn match framacKeyword2 /\\separated/ 
syn match framacKeyword2 /\\in\s/ 
syn match framacKeyword2 /\\is_finite/ 
syn match framacKeyword2 /\\is_plus_infinity/ 
syn match framacKeyword2 /\\is_minus_infinity/ 
syn match framacKeyword2 /\\initialized/ 

syn match framacKeyword3 /\\floor/ 
syn match framacKeyword3 /\\ceil/ 
syn match framacKeyword3 /\\pow/ 
syn match framacKeyword3 /\\sqrt/ 
syn match framacKeyword3 /\\abs/ 
syn match framacKeyword3 /\\log/ 
syn match framacKeyword3 /\\log10/ 
syn match framacKeyword3 /\\e/ 
syn match framacKeyword3 /\\exp/ 
syn match framacKeyword3 /\\max/ 
syn match framacKeyword3 /\\min/ 

"-------------------------------------------------------------------------------

syn match framacOperator "&&" 
syn match framacOperator "∧" 
syn match framacOperator "||" 
syn match framacOperator "∨" 
syn match framacOperator "^^" 
syn match framacOperator "==>" 
syn match framacOperator "⇒" 
syn match framacOperator "<==>" 
syn match framacOperator "[^=!<>]=[^=]"
syn match framacOperator "!\ze[^=]"
" syn match framacOperator "≡" 
" syn match framacOperator "≢" 

syn keyword framacOperator Here 
syn keyword framacOperator Pre 
syn keyword framacOperator Post 
syn keyword framacOperator Old 

syn keyword framacType integer 
syn match framacType "ℤ"
syn match framacType "ℕ"
syn match framacType "ℝ"
syn keyword framacType real 
syn keyword framacType string 
syn keyword framacType character 

"-------------------------------------------------------------------------------

hi link framacCommentInComment Comment

hi link framacComment1 framacComment
hi link framacComment2 framacComment

"-------------------------------------------------------------------------------

syn keyword	cType		int long short char void
syn keyword	cType		signed unsigned float double
if !exists("c_no_ansi") || exists("c_ansi_typedefs")
  syn keyword   cType		size_t ssize_t off_t wchar_t ptrdiff_t sig_atomic_t fpos_t
  syn keyword   cType		clock_t time_t va_list jmp_buf FILE DIR div_t ldiv_t
  syn keyword   cType		mbstate_t wctrans_t wint_t wctype_t
endif
if !exists("c_no_c99") " ISO C99
  syn keyword	cType		_Bool bool _Complex complex _Imaginary imaginary
  syn keyword	cType		int8_t int16_t int32_t int64_t
  syn keyword	cType		uint8_t uint16_t uint32_t uint64_t
  if !exists("c_no_bsd")
    " These are BSD specific.
    syn keyword	cType		u_int8_t u_int16_t u_int32_t u_int64_t
  endif
  syn keyword	cType		int_least8_t int_least16_t int_least32_t int_least64_t
  syn keyword	cType		uint_least8_t uint_least16_t uint_least32_t uint_least64_t
  syn keyword	cType		int_fast8_t int_fast16_t int_fast32_t int_fast64_t
  syn keyword	cType		uint_fast8_t uint_fast16_t uint_fast32_t uint_fast64_t
  syn keyword	cType		intptr_t uintptr_t
  syn keyword	cType		intmax_t uintmax_t
endif
if exists("c_gnu")
  syn keyword	cType		__label__ __complex__ __volatile__
endif

"-------------------------------------------------------------------------------

hi link framacComment Normal

hi link framacKeyword Special
hi link framacKeyword2 Identifier
hi link framacKeyword3 cOperator

hi link framacOperator Keyword
hi link framacType Type
hi link cType Include

hi link framacStart Comment
