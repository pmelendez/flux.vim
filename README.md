flux.vim
========

This is a very basic scheme color syntax for flux in vim. It is a hack derivate of cpp.vim. Comments are welcome :) 


Install
=======

Add flux type to vim by adding the following line on filetype.vim (path/to/vimfiles/filetype.vim)

" Flux
au BufNewFile,BufRead *.flux                    setf flux

if don't exists, create the following folders:

  ~/.vim
 
  ~/.vim/syntax
 
  ~/.vim/ftdetect

Copy the files in respecting directories:

	~/.vim/syntax/flux.vim
	~/.vim/syntax/flux.vim
	
Happy coding :)	
