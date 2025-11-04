# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias ll='ls -l'                              # long list
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func
export PATH="$HOME/bin:$PATH"
alias tmux='/usr/bin/tmux -2'
alias fdns='ipconfig /flushdns'
alias pw='pwgen -AB 9 1'
alias pi='ping'

#alias irc='irssi -c wan.lucid.net.au /join #gh0ds'
#alias i='irssi -c wan.lucid.net.au /join #gh0ds'
#alias i='irssi -c goon.lucid.net.au /join #gh0ds'
#IRC via nu-shell# 
#alias ti='ssh -t rgillan@nu-shell tmux attach || tmux new irssi -c goon.lucid.net.au  /join #gh0ds'
#set to try to fix issue with 40 line issues when using irc
#alias irssi='TERM=screen-256color irssi'


#alias scr='screen'
alias save_history='history >> ~/history_backup/history-save-$(date +%d-%m-%y)'
alias cyg-packages='cygcheck -c -d  >> ~/history_backup/CYGWIN_Installed_Packages-save-$(date +%d-%m-%y)'
#alias wipe='screen -wipe'
#alias t='tmux'
alias t="ssh -t rgillan@nu-shell.syd.gsoa.ddau 'tmux attach || tmux new'"
alias l="ssh -X ryan@lenny"
alias tmuxkill="tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill"
alias tkill="pgrep ssh-agent | xargs kill"
alias shelli='ssh nu-shell'
alias s='ssh nu-shell'
alias x="exit"
alias grep='grep --color'                     # show differences in colour
alias today=$(date +%Y-%m-%d --date="today")
alias yest=$(date +%Y-%m-%d --date="yesterday")
alias ipcalc='ipcalc -n'
alias lenny='ssh -A lenny'
alias lennyx='ssh -AX lenny'


#alias speed='speedtest-cli --server 1267 --simple --share' #Old Optus
alias speed='speedtest-cli --server 2629 --simple --share'  #Random Telstra

# youtube-dl to add the index name __ title 
alias youtube-dl='youtube-dl -f22 -o "%(playlist_index)s-%(title)s.%(ext)s"'

#set command prompt to a :) for commands that exit OK
# or :( for exit commands that have other than exit 0
PS1="\u@\h \[\e[33m\]\W\[\e[0m\] \[\`if [[ \$? = "0" ]]; then echo '\e[32m:)\e[0m'; else echo '\e[31m:(\e[0m' ; fi\`\] \$ "

#Launch Screen - now using tmux
#screen -R

#used for ssh logons with keychain etc
[ -z "$SSH_AUTH_SOCK" ] && eval $( keychain --eval ssh_key )

#home
cd

#Used for Voyence NCM. Ensure java7 is the path to javaws.exe in the version required.
#set java7="C:\Program Files (x86)\Java\jre7\bin\javaws.exe"
alias java7="c:/Program\ Files\ \(x86\)/Java/jre7/bin/javaws.exe"

function ncm {
if [ -z "$1" ]; then
	echo "USAGE: ncm <app server ip/fqdn>"
else
#	cd; java7 "https://$1:8880/voyence/powerup.jnlp" >/dev/null 2>&1
	echo java7 "https://$1.rim.au.gsoa:8880/voyence/powerup.jnlp" 
	cd; java7 "https://$1.rim.au.gsoa:8880/voyence/powerup.jnlp" >/dev/null 2>&1
fi
}

# Display the current IP details:
#hostname -i
ipconfig -all | grep -i "IPv4 address" | sed -e 's/(Preferred)//'

# Grep tweaks
export GREP_COLOR='1;37;41'
alias grep='grep --color=auto'
#export GREP_OPTIONS='--exclude-dir=.svn'   # hide .svn items from the search

#scp nu-shell:/home/rgillan/hosts ~/hosts
# Allow tab complete for hosts. eg ssh au-d <tab> <tab>
#host -l ad.gsoa.ddau > $HOME/hosts
#host -l rim.au.gsoa >> $HOME/hosts
#host -l syd.gsoa.ddau >> $HOME/hosts
#host -l gsoa.ddau >> $HOME/hosts
export HOSTFILE=$HOME/hosts


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
