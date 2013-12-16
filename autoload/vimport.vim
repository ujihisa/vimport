let s:save_cpo = &cpo
set cpo&vim
" NOTE this file has been automatically generated.
" Do not modify this file manually.

execute 'luafile' printf('%s/lua/vimport.lua', expand('<sfile>:h:h'))

function! vimport#f(x, y, z)
  return luaeval("vimport.f(_A[0], _A[1], _A[1])", [a:x, a:y, a:z])
endfunction
function! vimport#dev()
  return luaeval("vimport.dev()")
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
