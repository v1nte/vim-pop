map <leader>op :call VPop()<CR>

func! VPop()
    exec "w"
    if &filetype == 'm' 
        exec "!time octave % > %<_output.txt"
    elseif &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%< > %<_output "
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%< > %<_output.txt"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java -cp %:p:h %:t:r > %<_output.txt"
    elseif &filetype == 'python'
        exec "!time python3 % > %<_output.txt"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run % > %<_output.txt"
    endif
endfunc
