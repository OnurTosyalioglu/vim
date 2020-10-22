# Vim configuration for universal support as IDE

## Preconfiguration
- fzf:  for quicksearch (Like Sublime)
- Language Sdks
	- node must be installed!
	- This conf language agnostic, but language sdks must be installed and accessible from terminal (add sdk paths to $PATH variable) 

## Lang servers
- :CocInstall coc-java
- :CocInstall coc-tsserver
- :CocInstall coc-json
- :CocInstall coc-html
- :CocInstall coc-css
- :CocInstall coc-emmet
- :CocInstall coc-phpls
- :CocInstall coc-pyhton
- :CocInstall coc-sql

- reference: coc-vim extension

## Hot Keys 
- <F8> Tagbar
- nt   NerdTree toogle
- hs   horizontal split
- vs   vertical split
- lo   loc list open
- lc   loc list close
- qo   quickfix open
- qc   quickfix close
- ter  Terminal
- fzf  fzf 
- gad  git add
- gco  git commit
- gpu  git push
- jd   jump to definition
- wq   write and quit
- nq   quit
- <ctrl+w> swap window
- pret prettier format

## Snippet support (Redefine keyboard)
## For language snips, check out UltiSnips directory
- cb curly bracket
- sb square bracket
- p  paranthesis
- sq single quote
- dq double quote
- s  slash
- st star
