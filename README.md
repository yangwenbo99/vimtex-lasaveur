# vimtex-lasaveur

This plugin adds flavour of `vim-latex` to `vimtex`.

## Motivation

I am recently migrating from `vim-latex` (`latex-suite`) to `vimtex` for its modern features (compilation in background, forward search, etc.).  However, I found some functions of `vim-latex` very useful and determine that I cannot go without them.  For example, the inline snippets like `FIT` (Italic fonts) and some math symbols like `` `8`` and `((`.  I determine that I need to isolate the functions to a single plugin. 

Block snippets are not ported, because they can be done using other plugins.  However, `vim-latex`-flavoured names like `EEQ` are ported for `neosnippet`.


## Installation

```vim
Plug 'lervag/vimtex'
" NOTE: ~/.latexmkrc should be modified accordingly
let g:tex_flavor = "latex"
if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
" Plug 'yangwenbo99/neosnippet-snippets'
Plug 'Shougo/neosnippet-snippets'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-y>     <Plug>(neosnippet_expand_or_jump)
smap <C-y>     <Plug>(neosnippet_expand_or_jump)
xmap <C-y>     <Plug>(neosnippet_expand_target)"


" Temporary fixes
let g:Tex_Leader = '`'
let g:Tex_SmartKeyDot=1

Plug 'yangwenbo99/vimtex-lasaveur'
```


## License

As `vim-latex` is licensed under `CC0`, I am glad to release the plugin 
with the WTFPL.
