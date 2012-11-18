" say.vim: A vim plugin by Koichiro Wada (wadako111@gmail.com)

let s:save_cpo = &cpo
set cpo&vim

let g:testtest = "nnnn"
function! say#Say() range
    let line_content = ""
    for line_number in range(a:firstline, a:lastline)
        let line_content = line_content.". ".getline(line_number)
    endfor
    let str = "\"".(s:EscapeExclamation(line_content))."\""
    exec "r!say ".str
endfunction

" escape exclamation mark (!)
function! s:EscapeExclamation(str)
    return substitute(a:str, "!", ".", "g")
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
