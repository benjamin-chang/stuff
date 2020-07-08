source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# custom prompt
source ~/.zsh/git-prompt.sh

function custom_git_ps1 {
  __ps1=$(__git_ps1 "#%s")
  [ -z $__ps1  ] && print $USER && return
  [[ $__ps1 == *\** ]] && print "%F{red}${__ps1:0:-2}%f" && return
  [[ $__ps1 == *\+* ]] && print "%F{green}${__ps1:0:-2}%f" && return
  print $__ps1 
}

function custom_pwd {
  pwd | sed s:^$HOME:~: | sed 's:\(\.*[^/]\)[^/]*/:\1/:g'
}

function custom_node_ps1 {
  # HACK: show node version when package.json or node_modules in cwd 
  [[ -f package.json || -d node_modules ]] || return
  node_version=$(nvm current 2>/dev/null)
  #print "[%F{22}⬢%F{239} ${node_version}] "
  print "[⬢ ${node_version}] "
}

GIT_PS1_SHOWDIRTYSTATE=1
PS1='%B@%m:$(custom_pwd)%b $(custom_git_ps1)$ '

# add timestamp at rear
RPROMPT='%F{239}$(custom_node_ps1)[%D{%T}]%f'$RPROMPT

# completion support 
autoload -Uz compinit && compinit
bindkey '^ ' autosuggest-accept

# add color
export CLICOLOR=1

# source NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nv
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
