" Copyright 2013 The Go Authors. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.
"
" go.vim: Vim filetype plugin for Go.
"
" based by from https://github.com/fatih/vim-go/blob/79ea9ef26807eda0b55809d0521993bcecfa09e5/ftplugin/go.vim

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal formatoptions-=t

setlocal comments=s1:/*,mb:*,ex:*/,://
setlocal commentstring=//\ %s

setlocal noexpandtab

compiler go

onoremap <buffer> <silent> af :<c-u>call go#textobj#Function('a')<cr>
xnoremap <buffer> <silent> af :<c-u>call go#textobj#Function('a')<cr>

onoremap <buffer> <silent> if :<c-u>call go#textobj#Function('i')<cr>
xnoremap <buffer> <silent> if :<c-u>call go#textobj#Function('i')<cr>

onoremap <buffer> <silent> ac :<c-u>call go#textobj#Comment('a')<cr>
xnoremap <buffer> <silent> ac :<c-u>call go#textobj#Comment('a')<cr>

onoremap <buffer> <silent> ic :<c-u>call go#textobj#Comment('i')<cr>
xnoremap <buffer> <silent> ic :<c-u>call go#textobj#Comment('i')<cr>

" Remap ]] and [[ to jump betweeen functions as they are useless in Go
nnoremap <buffer> <silent> ]] :<c-u>call go#textobj#FunctionJump('n', 'next')<cr>
nnoremap <buffer> <silent> [[ :<c-u>call go#textobj#FunctionJump('n', 'prev')<cr>

onoremap <buffer> <silent> ]] :<c-u>call go#textobj#FunctionJump('o', 'next')<cr>
onoremap <buffer> <silent> [[ :<c-u>call go#textobj#FunctionJump('o', 'prev')<cr>

xnoremap <buffer> <silent> ]] :<c-u>call go#textobj#FunctionJump('v', 'next')<cr>
xnoremap <buffer> <silent> [[ :<c-u>call go#textobj#FunctionJump('v', 'prev')<cr>

" vim: sw=2 ts=2 et
