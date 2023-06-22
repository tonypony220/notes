https://stackoverflow.com/questions/3446320/in-vim-how-to-map-save-to-ctrl-s
XOFF

# VIM installing theme
https://github.com/junegunn/vim-plug
https://github.com/mhartington/oceanic-next
https://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim

-- How to copy to clipboard in Vim? -- 
	#In your vimrc file you can specify to automatically use the system clipboard for copy and paste.
	#On macOS and Windows set:

	set clipboard=unnamed
	#On Linux set (vim 7.3.74+):

	set clipboard=unnamedplus
	#NOTE: You may need to use an up to date version of Vim for these to work.



#first occurrence 
	:s/foo/bar/
#all in line
	:s/foo/bar/g
#whole file (%s is range of lines)
	:%s/foo/bar/g
#whole file (g option not needed actually)
	:%s/foo/bar
#delete
	:s/foo//g
#use diff delimeter
	:s|foo|bar|
#with confirm
	:s/foo/bar/gce

