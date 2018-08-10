if !exists("g:glob_ignore")
  let g:glob_ignore = {}
endif

function! glob#ignore(type)
  let l:str = ""
  if has_key(g:glob_ignore, "shared")
    for dir in g:glob_ignore["shared"]
      let l:str .= " --glob \"!" . dir . "\""
    endfor
  endif

  if has_key(g:glob_ignore, a:type)
    for dir in g:glob_ignore[a:type]
      let l:str .= " --glob \"!" . dir . "\""
    endfor
  endif

  return str
endfunction
