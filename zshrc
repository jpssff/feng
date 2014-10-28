#! /bin/sh
# 使用方式 
# git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# chsh -s /bin/zsh
# git clone git@github.com:jpssff/feng.git ~/feng
# source ~/feng/zshrc

prefix=$(cd "$(dirname "$0")"; pwd)

export SVN_EDITOR='vim'
export PATH="$PATH:$HOME/bin"

alias Fdiruse='du -s * | sort -k1,1rn | head'

alias ci='svn ci -m "by feng"'

alias http="sudo php -S 127.0.0.1:80"
alias http_python="python -m SimpleHTTPServer"

if [ -f "$prefix/myrc" ]
then
    . $prefix/myrc
fi

function ex () {
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
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
