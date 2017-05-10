" *** THESE SETTINGS ALSO APPLY TO CPP FILES ***

setlocal foldmethod=syntax

" (0 - Indent 0 characters after an open parenthesis
" Example: if (c1 && (c2 ||
"                     c3))
"              foo;
"          if (c1 &&
"              (c2 || c3))
"             {
"
" l1 - Align statements with the case label
" Example: switch (a) {
"              case 1: {
"                  break;
"              }
"
" t0 - DON'T indent a function's return type in its definition.
" Example: int
"          func()

setlocal cino=(0,l1,t0
