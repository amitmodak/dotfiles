source ~/.git-prompt.sh

# https://stackoverflow.com/questions/15883416/adding-git-branch-on-the-bash-command-prompt
PS1='${debian_chroot:+($debian_chroot)}\[\e[0;34m\]\u\[\e[m\]\[\e[0;35m\]@\[\e[m\]\[\e[0;36m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[m\] \[\e[1;36m\]$ \[\e[m\]'

#add color to manpages
#apt-get install most
export MANPAGER="/usr/bin/most -s"

#https://tosbourn.com/view-markdown-files-terminal/
rmd () {
    pandoc $1 | lynx -stdin
}

#alias
alias ll='ls -alFh'
alias grep='grep --color=auto'
#http://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
alias sudo='sudo '

#add color to grep
#https://web.archive.org/web/20141124175547/http://www.gnu.org/software/grep/manual/grep.html#Environment-Variables
#export GREP_OPTIONS='--color=auto'
