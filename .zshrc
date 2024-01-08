export ZSH="$HOME/.oh-my-zsh"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
# default oh-my-zsh plugins
git
z
sudo
last-working-dir
# other plugins
zsh-syntax-highlighting
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases
alias ez="code ~/.zshrc"
alias sz="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias gcm="git commit -m"
alias gbr="git branch | grep -v "master" | xargs git branch -D" # delete all branchs but main and master

# fnm
export PATH="/Users/lucasfaria/Library/Application Support/fnm:$PATH"
eval "`fnm env`"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -s "/Users/lucasfaria/.scm_breeze/scm_breeze.sh" ] && source "/Users/lucasfaria/.scm_breeze/scm_breeze.sh"

# use starship theme (needs to be at the end)
eval "$(starship init zsh)"