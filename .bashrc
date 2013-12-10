# .bashrc
export PS1="[\h] \[\e]0;\u \w\a\]\[\033[01;35m\][\u]\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n$"

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -alF --color=always' # -X sort by extension
alias lx='ls -alFX --color=always' # -X sort by extension
alias lz='ls -alF --sort=size --color=always' # -X sort by extension
alias lt='ls -alFcpt --color=always' # -X sort by extension
alias l='ls -alF --color=always'
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

#export PYTHONHOME=/nfs/python
#export PATH=$JAVA_HOME/bin:$PYTHONHOME/bin:$PATH:/usr/local/bin
export PATH=$JAVA_HOME/bin:$PATH:/usr/local/bin

#a function to git push ASAP
ggg(){
  git add . && git commit -m "$1" && git push # ' -> "
}
