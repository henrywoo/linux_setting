# .bashrc
export PS1="[\h] \[\e]0;\u \w\a\]\[\033[01;32m\][\u]\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n$"

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -alF --color=always'
alias l='ls -alF --color=always'
alias vi='vim -u ~/.simon.vimrc'
alias gp='grep --color=always'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


export ZLIB_LIBRARY=/lib64
export ZLIB_INCLUDE_DIR=/usr/lib/include
export BOOST_ROOT=/usr/local/boost

export PATH=/usr/local/python273/bin:/usr/local/python3/bin:$PATH:/usr/local/bin:/usr/local/Trolltech/Qt-4.8.2/bin


alias m='mysql -S /lvm/data/mysql.sock production -A --auto-rehash'
