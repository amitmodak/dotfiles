PS1='${debian_chroot:+($debian_chroot)}\[\e[0;32m\]\u\[\e[m\]\[\e[0;35m\]@\[\e[m\]\[\e[0;36m\]\h\[\e[m\]:\[\e[1;34m\]\w $ \[\e[m\]'

#add color to manpages
#apt-get install most
export MANPAGER="/usr/bin/most -s"

#alias
alias ll='ls -alFh'

#add color to grep
export GREP_OPTIONS='--color=auto'
