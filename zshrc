# Path to your oh-my-zsh configuration.
ZSH=/home/vagrant/.oh-my-zsh
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="navyblue"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND="navyblue"
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND="orange3"
POWERLEVEL9K_DIR_HOME_BACKGROUND="dodgerblue1"
POWERLEVEL9K_DIR_HOME_FOREGROUND="lightcyan1"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="dodgerblue1"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="lightcyan1"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="dodgerblue1"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="lightcyan1"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="bullet-train"
ZSH_THEME="re5et"

plugins=(compleat debian git colored-man-pages command-not-found zsh-navigation-tools zsh-autosuggestions zsh-syntax-highlighting)
source /home/vagrant/.oh-my-zsh/oh-my-zsh.sh
# Customize to your needs...
autoload -Uz compinit bashcompinit && compinit && bashcompinit
if [[ -f ~/.bash_aliases ]]; then
. ~/.bash_aliases
fi
source "/home/vagrant/.profile"


alias vi='vim'
# Allow core dumps
ulimit -c unlimited
# Command-line fuzzy finder
export FZF_DEFAULT_COMMAND='fd --type f --color=never'
export FZF_ALT_C_COMMAND='fd --type d . --color=never'
[ -f "${XDG_CONFIG_HOME:-/home/vagrant/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-/home/vagrant/.config}"/fzf/fzf.zsh

# exa aliases (only if installed)
command -v exa > /dev/null 2>&1 && { \
                                     alias ls='exa' ;
                                     alias l='exa --long --header --git' ;
                                     alias ll='exa --long --header --git' ;
                                     alias la='exa --long --header --git -a' ;
                                     alias lg='exa --grid --long --header --git' ;
                                     alias lt='exa --tree --long --header --git' }
