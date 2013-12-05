# .bashrc
export PS1="[\h] \[\e]0;\u \w\a\]\[\033[01;32m\][\u]\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n$"

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -alF --color=always'
alias l='ls -alF --color=always'
alias vi='vim -u ~/.myvimrc'
alias gp='grep --color=always'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


export ZLIB_LIBRARY=/lib64
export ZLIB_INCLUDE_DIR=/usr/lib/include
export BOOST_ROOT=/usr/local/boost
export BOOST_HOME=/usr/local/boost
export JAVA_HOME=/nfs/jdk


export PATH=$JAVA_HOME/bin:$PATH:/usr/local/bin
