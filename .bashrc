# .bashrc
export PS1="[\!]\[\033[1;32m\][\h][\l][\s](\t)\[\033[5;36m\][\j]\[\033[01;35m\](\u)\[\033[00m\] : \[\033[04;34m\]\w\[\033[00m\]\n\$"

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -alF --color=always' # -X sort by extension
alias lx='ls -alFX --color=always' # -X sort by extension
alias lz='ls -alF --sort=size --color=always' # -X sort by extension
alias lt='ls -alFcpt --color=always' # -X sort by extension
alias l='ls -alF --color=always'
alias lh='ls -alFh --color=always'
alias hhh='head -n 1 '
alias ttt='tail -n 1 '
alias vi='vim -u ~/.myvimrc'
alias gp='grep --color=always'
#alias m='mysql -S /nfs/data/mysql.sock'
alias m='mysql -P 3306 -u root --host=ubu'

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi


export ZLIB_LIBRARY=/lib64
export ZLIB_INCLUDE_DIR=/usr/lib/include

export BOOST_ROOT=/nfs/boost
export BOOST_HOME=/nfs/boost
export JAVA_HOME=/nfs/jdk

export PYTHONHOME273=/nfs/python273
export PYTHONHOME3=/nfs/python3
#export PATH=$JAVA_HOME/bin:$PYTHONHOME/bin:$PATH:/usr/local/bin
export PATH=$JAVA_HOME/bin:$PATH:/usr/local/bin:$PYTHONHOME273/bin:$PYTHONHOME3/bin

#a function to git push ASAP
ggg(){
  git add . && git commit -m "$1" && git push # ' -> "
}
pymod(){
  python -c "import $1;print($1.__file__)"
}

#[c58][3][-bash](18:06:02)[0](root):/nfs/software[1034]
#$wget https://pypi.python.org/packages/source/F/Flask/Flask-0.10.tar.gz
#--2013-12-13 18:06:34--  https://pypi.python.org/packages/source/F/Flask/Flask-0.10.tar.gz
#Resolving pypi.python.org... 103.245.222.184
#Connecting to pypi.python.org|103.245.222.184|:443... connected.
#ERROR: certificate common name `*.a.ssl.fastly.net' doesn't match requested host name `pypi.python.org'.
#To connect to pypi.python.org insecurely, use `--no-check-certificate'.
#Unable to establish SSL connection.
alias wget='wget --no-check-certificate'
alias ccat='pygmentize -g'
alias glog='git log --color --graph --stat'
alias gshow='git show --color'
export PYTHONSTARTUP=~/.python_init.py
ulimit -c unlimited
#mount -t nfs c58:/nfs/ /nfs
