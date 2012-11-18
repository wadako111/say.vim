" say.vim: A vim plugin by Koichiro Wada (wadako111@gmail.com)

let s:save_cpo = &cpo
set cpo&vim

let g:testtest = "nnnn"
function! say#Say() range
    let line_content = ""
    for line_number in range(a:firstline, a:lastline)
        let line_content = line_content.". ".getline(line_number)
    endfor
    let str = "\"".(s:Escape(line_content))."\""
    exec "r!say ".str
endfunction

" escape exclamation mark (!)
function! s:Escape(str)
    let str = substitute(a:str, "!", ".", "g")
    let str = substitute(str, "\"", "", "g")
    let str = substitute(str, "#", " hash ", "g")
    return str
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
