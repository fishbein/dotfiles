# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/phil.fishbein/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="avit"

alias zshrc="vim ~/.zshrc"
alias szshrc="source ~/.zshrc"
alias be="bundle exec"
alias bi="bundle install"
alias gs="git status"
alias gc="git commit"
alias gco="git checkout"
alias gcm="git checkout master"
alias gpull="git pull"
alias gpush="git push"
alias gbranch="git checkout -b"
alias gclone="git clone"
alias o="open ."
alias rs="rails server"
alias rc="rails console"
alias cat="bat"
alias replicaserver='DATABASE_URL=`heroku config:get DATABASE_URL -a vts-production-replica` spring rails s'
alias replicaconsole='DATABASE_URL=`heroku config:get DATABASE_URL -a vts-production-replica` rails c'

export EDITOR='vim'

function up() {
  export git_dir="$(git rev-parse --show-toplevel 2> /dev/null)"
  if [ -z $git_dir ]
  then
    cd ..
  else
    cd $git_dir
  fi
}

source $ZSH/oh-my-zsh.sh

prompt_context() {}

 . /usr/local/etc/profile.d/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(rbenv init -)"
