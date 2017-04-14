#!/usr/bin/env bash

set -o vi

export LANG='en_US.UTF-8'

# Path to the bash it configuration
export BASH_IT="/${HOME}/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
# export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# # Set Xterm/screen/Tmux title with only a short hostname.
# # Uncomment this (or set SHORT_HOSTNAME to something else),
# # Will otherwise fall back on $HOSTNAME.
export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

alias git_graph='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias hi='history'

# export PATH="${HOME}/.rbenv/bin:${PATH}:${HOME}/code/gateway/public_bin"
export PATH="${HOME}/.rbenv/bin:${PATH}"
# rbenv 
eval "$(rbenv init -)"

export NVM_DIR="${HOME}/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# if [ -f "${HOME}/dotfiles-local/bashrc" ]; then
#   . "${HOME}/dotfiles-local/bashrc"
# fi 

export BASH_IT_CUSTOM="~/dotfiles/bash_it/custom"

# Load Bash It
source ${BASH_IT}/bash_it.sh
