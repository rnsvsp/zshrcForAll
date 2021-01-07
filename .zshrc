if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ralph/.oh-my-zsh"

# Set your themes here
ZSH_THEME="powerlevel10k/powerlevel10k"

# Personal alias from Ralph
alias ud="sudo dnf update -y"
alias ug="sudo dnf upgrade -y"
alias inner="sudo dnf install -y "
alias remm="sudo dnf remove -y "
alias irpm="sudo rpm -i "
alias procpm="rpm -qa | grep -i "
alias rpme="sudo rpm -e "
alias la="ls -a"
alias ll="ls -l"
alias home="cd ~/"
alias down="cd ~/Downloads"
alias sos="source ~/.zshrc"
alias cz="code ~/.zshrc"
alias res="reset"
alias cls="clear"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
