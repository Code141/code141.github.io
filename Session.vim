let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/lawapi/landing/index.html
$argadd ~/lawapi/landing/style.css
edit index.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 71 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 85) / 170)
exe '2resize ' . ((&lines * 8 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 170)
exe '3resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 85 + 85) / 170)
exe '4resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 85 + 85) / 170)
exe '5resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 85 + 85) / 170)
exe '6resize ' . ((&lines * 44 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 85 + 85) / 170)
argglobal
if bufexists("index.html") | buffer index.html | else | edit index.html | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=7
setlocal fml=1
setlocal fdn=20
setlocal fen
4
normal! zo
21
normal! zo
58
normal! zo
58
normal! zo
58
normal! zo
63
normal! zo
68
normal! zo
70
normal! zo
85
normal! zo
87
normal! zo
let s:l = 57 - ((56 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 0
wincmd w
argglobal
terminal ++curwin ++cols=84 ++rows=8 
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 4) / 8)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
2argu
if bufexists("css/media.css") | buffer css/media.css | else | edit css/media.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 13 - ((2 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
2argu
if bufexists("css/font_face_ageo.css") | buffer css/font_face_ageo.css | else | edit css/font_face_ageo.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
2argu
if bufexists("css/style.css") | buffer css/style.css | else | edit css/style.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 16 - ((6 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 014|
wincmd w
argglobal
2argu
if bufexists("css/responsive.css") | buffer css/responsive.css | else | edit css/responsive.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
23
normal! zo
let s:l = 40 - ((21 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 018|
wincmd w
6wincmd w
exe '1resize ' . ((&lines * 71 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 85) / 170)
exe '2resize ' . ((&lines * 8 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 170)
exe '3resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 85 + 85) / 170)
exe '4resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 85 + 85) / 170)
exe '5resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 85 + 85) / 170)
exe '6resize ' . ((&lines * 44 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 85 + 85) / 170)
tabnext 1
badd +1 index.html
badd +1 style.css
badd +1 reset.css
badd +7 css/reset.css
badd +1 css/style.css
badd +1 css/font_face.css
badd +1 css/media.css
badd +12 css/miscellaneous.css
badd +7 css\ responsive.css
badd +1 css/responsive.css
badd +1 css/font_face_ageo.css
badd +0 ~/lawapi/landing/index.html
badd +1 ~/lawapi/landing/style.css
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=5 winwidth=84 shortmess=filnxtToO
set winminheight=1 winminwidth=10
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
