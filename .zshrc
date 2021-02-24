# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/dormouse/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

DISABLE_UPDATE_PROMPT="true"

TERMINAL=alacritty
# enable command auto-correction.
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
	jump 
	npm 
	colored-man-pages 
	command-not-found 
	copydir 
	zsh-autosuggestions
	vi-mode
	web-search
)

# bat - cat with hightlighting
# fuck - corrects errors in previous console commands
# websearch - usage: google oh-my-zsh
# copydir - Then use the command copydir to copy the $PWD.

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="nvim ~/.zshrc"
# abre o dir do nvim no nvim (inception carai)
alias dirvim='cd /home/dormouse/.config/nvim && nvim'
# abre o dotfiles no lazygit
alias config='lazygit --git-dir=/home/dormouse/.dotfiles --work-tree=/home/dormouse'
# Exibe a listagem já formatada: exibe o tipo de arquivo, arquivos
# ocultos e em linguagem humana
alias lss='ls -Flhac'
# exibe o nome do arquivo antes de eliminá-lo 
alias rm='rm -iv'

export NVM_DIR="/home/dormouse/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# alias config='/usr/bin/git --git-dir=/home/dormouse/.dotfiles --work-tree=/home/dormouse'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=($fpath "/home/dormouse/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
