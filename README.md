我的mac机器一些开发配置。

zsh使用 
-------

先安装“oh my zsh”：

	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
	chsh -s /bin/zsh
	
导入配置：

	git clone git@github.com:jpssff/feng.git ~/feng
	echo "source ~/feng/zshrc" >> ~/.zshrc


vim配置
-------

准备：

    [ -d $HOME/.vim ] && mv ~/.vim ~/.vim.bak
    ls -s ~/feng/vim ~/.vim

先安装`vundle`：

	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

导入配置：

	echo "source ~/feng/vim/vimrc" >> ~/.vimrc
	
安装vundle相关插件：
	
	vim +PluginInstall +qall

如提示错误，忽略回车继续，安装完插件后重启vim.
