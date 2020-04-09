
let s:save_cpo = &cpo
set cpo&vim

if exists('g:loaded_go_nvim')
  finish
endif
let g:loaded_go_nvim = 1

" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: sw=2 ts=2 et
