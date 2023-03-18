# MAC Z-SHELL
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/rohitsood/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

################# ALIAS####################
# shell profile will over-ride .profile
alias ll='ls -lah'
alias l='ls'
alias lld='ls -ld */'
alias 'cd..'='cd ..'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias code='cd ~/02_professional/gitlab/code/ && ls'
alias gd='cd /Users/rohitsood/02_professional/code/gitlab/gd && ls'
alias sed=gsed

############### Shell Commands ############
# Cloud Provide Selection
cloud () {
. $HOME/code/scripts/cloud.sh
}
# AWS
#complete -C '/usr/local/bin/aws_completer' aws

#Markdown
md(){
  pandoc $1 | lynx -stdin
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# PATH

export PYTHON_HOME=/usr/local/opt/python/libexec/bin
export NVM_DIR=$HOME/.nvm

export PATH=/bin:/usr/sbin:/sbin:/opt/X11/bin:$PYTHON_HOME:$NVM_DIR:/usr/local/bin:/usr/bin


#export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
