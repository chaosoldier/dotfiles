export ZSH=$HOME/.oh-my-zsh

if [ -d "$ZSH" ]; then
  # Path to your oh-my-zsh configuration.
  ZSH=$HOME/.oh-my-zsh

  ZSH_THEME="robbyrussell"

  # Set to this to use case-sensitive completion
  # CASE_SENSITIVE="true"

  # Comment this out to disable weekly auto-update checks
  # DISABLE_AUTO_UPDATE="true"

  # Uncomment following line if you want to disable colors in ls
  # DISABLE_LS_COLORS="true"

  # Uncomment following line if you want to disable autosetting terminal title.
  # DISABLE_AUTO_TITLE="true"

  # Uncomment following line if you want red dots to be displayed while waiting for completion
  # COMPLETION_WAITING_DOTS="true"

  plugins=(autojump cap command-not-found compleat debian extract gem git history-substring-search jake knife lol npm nyan rake redis-cli sprunge ssh-agent vagrant vi-mode)

  . $ZSH/oh-my-zsh.sh
fi

export EDITOR=$(which vim)
if [ -n "$DISPLAY" ]; then
  BROWSER=$(which firefox)
else
  BROWSER=$(which lynx)
fi

# History.
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

unsetopt CLOBBER

[[ -s $HOME/.aliases ]]                       && . $HOME/.aliases
[[ -s $HOME/.functions ]]                     && . $HOME/.functions
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && . $HOME/.tmuxinator/scripts/tmuxinator
