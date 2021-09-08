if exists("b:vim_lasaveur_syntax")
  finish
endif
let b:vim_lasaveur_syntax=1

if !exists("g:vimtex_syntax_conceal.empcolor")
	let g:vimtex_syntax_conceal.empcolor=1
endif

" syn cluster slEmp contains=slEmpBlue,slEmpRed,slEmpGreen 
" syn cluster slBlkCommon contains=@texClusterMath,@texClusterOpt,BlkInd,@slEmp 
" syn cluster slBlkCommon remove=@NoSpell

if g:vimtex_syntax_conceal.empcolor
	syntax region slEmpBlue   matchgroup=texCmdStyle concealends contains=slEmpBlue,@Spell keepend start="\\empblue{"  end="}"
	syntax region slEmpRed   matchgroup=texCmdStyle concealends contains=slEmpRed,@Spell keepend start="\\empred{"  end="}"
	syntax region slEmpGreen   matchgroup=texCmdStyle concealends contains=slEmpGreen,@Spell keepend start="\\empgreen{"  end="}"
	" syntax region slBlkInd   matchgroup=texCmdStyle concealends contains=@BlkInd,@texClusterMath,@texClusterOpt,@Spell start="\\blkind{"  end="}"
	" syntax region slBlkInd   matchgroup=texCmdStyle concealends contains=TOP start="\\blkind{"  end="}"
	syntax match texCmdStyle nextgroup=slBlkInd skipwhite skipnl "\\blkind\>" conceal cchar=▸
	call vimtex#syntax#core#new_arg('slBlkInd')
endif



hi slEmpBlue         ctermfg=cyan  cterm=italic gui=italic
hi slEmpRed          ctermfg=red   cterm=italic gui=italic
hi slEmpGreen        ctermfg=green cterm=italic gui=italic
hi slBlkInd          ctermfg=145 
