# 使用方式 
# git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# chsh -s /bin/zsh
# git clone git@github.com:jpssff/feng.git ~/feng
# source ~/feng/zshrc

prefix=$(cd "$(dirname "$0")"; pwd)
path_scripts="$prefix/scripts"

export SVN_EDITOR='vim'

alias Fdiruse='du -s * | sort -k1,1rn | head'

alias baeci='svn16 ci -m "by feng"'
alias ci='svn ci -m "by feng"'
alias ciconfig='xx(){ cd ~/bae/vim;svn ci -m "by feng"; };xx;'
alias vimconfig='vim ~/.bash_profile'
alias vimvimrc='vim ~/.vimrc'

alias co_bae_vim='svn co https://svn.duapp.com/appidemclz47tmf/0 ~/bae/vim'
alias co_bae_drawing='svn co https://svn.duapp.com/appid34raingc2h/0 ~/bae/drawing'

alias cd_bae_vim='cd ~/bae/vim'
alias cd_bae_drawing='cd ~/bae/drawing'

alias relay="ssh fengweifeng@relay01.baidu.com"
alias relay01="ssh fengweifeng@relay01.baidu.com"
alias relay02="ssh fengweifeng@relay02.baidu.com"

alias http="python -m SimpleHTTPServer"

ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1        ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1       ;;
      *.rar)       rar x $1     ;;
      *.gz)        gunzip $1     ;;
      *.tar)       tar xf $1        ;;
      *.tbz2)      tar xjf $1      ;;
      *.tgz)       tar xzf $1       ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1    ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
