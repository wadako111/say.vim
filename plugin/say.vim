" say.vim: A vim plugin by Koichiro Wada (wadako111@gmail.com)

if exists("g:loaded_say_vim")
    finish
endif
let g:loaded_say_vim = 1

let s:save_cpo = &cpo
set cpo&vim

command! -range Say :<line1>,<line2> call vim_say#Say()

let &cpo = s:save_cpo
unlet s:save_cpo
