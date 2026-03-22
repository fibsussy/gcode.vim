" G-code ftplugin - keymappings and setup

nnoremap <buffer> <silent> K :call gcode#hover()<CR>
nnoremap <buffer> <silent> <Leader>gm :call gcode#math()<CR>

if !exists('g:gcode_docs_loaded')
  runtime! autoload/gcode.vim
  let g:gcode_docs_loaded = 1
endif

command! -buffer GcodeMath call gcode#math()
