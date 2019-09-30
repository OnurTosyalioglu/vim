# vim update & essentials
if [[ $OSTYPE = 'darwin'* ]];
then
	brew install vim \
		ctags
else
	sudo apt install vim \
		exuberant-ctags
fi

