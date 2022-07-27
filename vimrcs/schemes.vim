" Configure Theme
if (has("termguicolors"))
 set termguicolors
endif

set termguicolors     " enable true colors support
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set background=dark


let g:onedark_style = 'darker'
let g:onedark_termcolors=256


"dark, darker, cool, deep, warm, warmer, light
let g:onedark_config = {
  \ 'style': 'deep',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }

let g:molokai_original = 0
let g:rehash256 = 1

let g:sonokai_style = 'andromeda' "atlantis
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1


let g:gruvbox_contrast_dark = 'medium' "hard, medium, soft

"let g:lightline = {
  "\ 'colorscheme': 'dogrun',
  "\ }

let ayucolor="mirage"   " light, mirage, dark
"
"let g:lightline = {'colorscheme': 'tokyonight'}
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

let g:gruvbox_baby_function_style = "NONE"
let g:gruvbox_baby_keyword_style = "italic"


let g:srcery_italic = 1
"let g:lightline = {'colorscheme': 'srcery_drk'}

colorscheme NeoSolarized

hi Normal guibg=NONE ctermbg=NONE
