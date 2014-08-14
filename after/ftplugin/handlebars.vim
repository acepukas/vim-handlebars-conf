" modified version of handlebars matchit integration, support HTML tag matching

if exists("loaded_matchit")
  let b:match_ignorecase = 0

  let b:match_words = '{:},[:],(:),'
    \ . '\%({{\)\@<=[#^]\s*\([-0-9a-zA-Z_?!/.]\+\)\s*}}'
    \ . ':'
    \ . '\%({{\)\@<=/\s*\1\s*}}'
    \ . '<:>,'
    \ . '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,'
    \ . '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,'
    \ . '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
endif
