if !exists("g:glob_ignore")
  let g:glob_ignore = {}
endif

function! BuildGlob(type)
  let str = ""
  if has_key(g:glob_ignore, "shared")
    for dir in g:glob_ignore["shared"]
      str = str . " --glob \"!" . dir . "\""
    endfor
  endif

  if has_key(g:glob_ignore, a:type)
    for dir in g:glob_ignore["shared"]
      str = str . " --glob \"!" . dir . "\""
    endfor
  endif
endfunction
