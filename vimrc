set hlsearch
set ts=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set cindent
"set expandtab

hi Search ctermbg=LightYellow
hi Search ctermfg=Red

syntax enable
syntax on
filetype plugin indent on

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set tags=/home/vagrant/starfish/linux-imx
set tags=/home/vagrant/starfish/uboot-imx
set tags=/home/vagrant/common/W640660WINCE_BSP

:cs add /home/vagrant/starfish/linux-imx/cscope.out /home/vagrant/starfish/linux-imx 
:cs add /home/vagrant/starfish/uboot-imx/cscope.out /home/vagrant/starfish/uboot-imx 
:cs add /home/vagrant/common/W640660WINCE_BSP/cscope.out /home/vagrant/common/W640660WINCE_BSP

:set cscopequickfix=s-,c-,d-,i-,t-,e-
:cw

nmap<F4> :Tlist<cr>
nmap<F3> :NERDTree<cr>
nmap<F6> :cn<cr>
nmap<F7> :cp<cr>
nmap ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap si :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap sd :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreservePatternHistory = 1
if filereadable("./filenametags")
	let g:LookupFile_TagExpr = '"./filenametags"'
endif

nmap <silent> <leader>lk :LUTags<cr>
nmap <silent> <leader>lb :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>
nmap lw :LUWalk <C-R>=expand("<cword>")<CR><CR>
nmap lb :LUBufs <C-R>=expand("<cword>")<CR><CR>
nmap lt :LUTags <C-R>=expand("<cword>")<CR><CR>
