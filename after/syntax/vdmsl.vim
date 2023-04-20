scriptencoding utf-8
" Great for those that want Unicode, but their project’s config or style guide
" does not endorse the usage. Much of the code is based on VimL code for
" concealing Haskell, Idris, and OCaml.

if !get(g:, 'vdm_unicode_conceal_enable', 0) || !has('conceal') || &encoding !=? 'utf-8'
	finish
endif

" vim: set fenc=utf-8:
syntax match vdmNiceOperator '->' conceal cchar=→
	\ containedin=vdmOperator
syntax match vdmNiceOperator '<-' conceal cchar=←
	\ containedin=vdmOperator
syntax match vdmNiceOperator '=>' conceal cchar=⇒
	\ containedin=vdmOperator
syntax match vdmNiceOperator "<=" conceal cchar=⇐
	\ containedin=vdmOperator
syntax match vdmNiceOperator '::' conceal cchar=∷
	\ containedin=vdmOperator
syntax match vdmNiceOperator '==' conceal cchar=≡
syntax match vdmNiceOperator '<>' conceal cchar=≠
syntax match vdmNiceOperator '<=>' conceal cchar=⇔
syntax match vdmNiceOperator '|->' conceal cchar=↦
syntax match vdmNiceOperator '<-|' conceal cchar=↤
syntax match vdmNiceOperator "<=" conceal cchar=≤
syntax match vdmNiceOperator ">=" conceal cchar=≥

syntax keyword vdmNiceFunction not conceal cchar=¬
syntax keyword vdmNiceFunction and conceal cchar=∧
syntax keyword vdmNiceFunction or conceal cchar=∨
syntax keyword vdmNiceFunction union conceal cchar=∪
syntax keyword vdmNiceFunction intersect conceal cchar=∩
syntax keyword vdmNiceFunction subset conceal cchar=⊆
syntax keyword vdmNiceFunction psubset conceal cchar=⊂
syntax keyword vdmNiceFunction lambda conceal cchar=λ



syntax match vdmNiceStatement "\<\(for *all\|for\)\>" conceal cchar=∀
syntax keyword vdmNiceStatement forall conceal cchar=∀
syntax keyword vdmNiceStatement in conceal cchar=∈
syntax match vdmNiceStatement "not in" conceal cchar=∉

" if !get(g:, 'purescript_unicode_conceal_disable_common', 1)
" 	syntax match purescriptNiceOperator "\/\@<!\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ
" 	syntax match purescriptNiceOperator "\~>" conceal cchar=↝
" 		\ containedin=purescriptTypeExport,purescriptConstructorDecl,purescriptClassDecl,purescriptFunctionDecl,purescriptData,purescriptNewtype,purescriptTypeAlias,purescriptOperatorType
" 	syntax match purescriptNiceOperator '<<<' conceal cchar=°
" 	syntax match purescriptNiceOperator '==' conceal cchar=≡
" 	syntax match purescriptNiceOperator '/=' conceal cchar=≠
" 	" deals with Kliesli operator false positives
" endif
" 
" " These have a general meaning in mathematics; nothing in this block should be
" " for ‘fun’ or ‘cute’. Perhaps that’s more suited for a new block or extension…
" if get(g:, 'purescript_unicode_conceal_enable_discretionary', 0)
" 	syntax keyword purescriptNiceOperator exists conceal cchar=∃
" 		\ containedin=purescriptTypeExport,purescriptConstructorDecl,purescriptClassDecl,purescriptFunctionDecl,purescriptData,purescriptNewtype,purescriptTypeAlias,purescriptOperatorType
" 	syntax match purescriptNiceOperator '\<sum\>' conceal cchar=∑
" 	syntax match purescriptNiceOperator '\<product\>' conceal cchar=∏
" 	syntax match purescriptNiceOperator '\<sqrt\>' conceal cchar=√
" 	syntax match purescriptNiceOperator '\<not\>' conceal cchar=¬
" 	syntax match purescriptNiceOperator "||\ze[[:alpha:][:space:]_([]" conceal cchar=∨
" 	syntax match purescriptNiceOperator "&&\ze[[:alpha:][:space:]_([]" conceal cchar=∧
" 	syntax match purescriptNiceOperator '`elem`' conceal cchar=∈
" 	syntax match purescriptNiceOperator '`notElem`' conceal cchar=∉
" 	syntax match purescriptNiceOperator '`union`' conceal cchar=∪
" 	syntax match purescriptNiceOperator '`intersect`' conceal cchar=∩
" 	syntax match purescriptNiceOperator '\<infinity\>' conceal cchar=∞
" 	syntax match purescriptNiceIdentifier '\<pi\>' conceal cchar=π
" 	syntax match purescriptNiceIdentifier '\<tau\>' conceal cchar=τ
" 	syntax match purescriptNiceIdentifier '\<empty\>' conceal cchar=∅
" 	syntax match purescriptNiceIdentifier '\<zero\>' conceal cchar=∅

highlight link vdmNiceIdentifier Identifier
highlight! link Conceal Identifier
highlight link vdmNiceStatement Statement
highlight! link Conceal Statement
highlight link  vdmNiceOperator Operator
highlight! link Conceal Operator
highlight link  vdmNiceFunction Function
highlight! link Conceal Function

setlocal conceallevel=2
