# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"

source $ZSH/oh-my-zsh.sh

# User configuration


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mate -w'
fi


plugins=(
direnv
z
git
git-prompt
nvm
rbenv
)

# Force Z to load (workaround for some Macs)
. /usr/local/etc/profile.d/z.sh


alias zsource="source ~/.zshrc"
alias zedit="vim ~/.zshrc"

alias ll="ls -lha"
alias master="git checkout master"
alias git="git-together"

# Add the Meeple CLI
alias meeple="$HOME/workspace/meepleverse/meeple-cli/cli/bin/meeple"
alias m="meeple"

alias mpft="meeple panorama t --frontend"
alias mpftu="meeple panorama test --frontend-unit"
alias mpfti="meeple panorama test --frontend-integration"
alias mpfs="meeple panorama frontend start"

alias mpbt="meeple panorama test --backend"
alias mpbs="meeple panorama backend start"

alias mct="meeple continuum test"

alias me2es="meeple e2e --servers-only"
alias me2et="meeple e2e --tests-only"
alias me2ef="meeple e2e webpack-server"


alias meeple-bundle="bundle install --gemfile $HOME/workspace/meepleverse/meeple-cli/cli/GEMFILE"

export PATH=/usr/local/opt/postgresql@11/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

export FLYWAY_CLEAN_DISABLED=false
export GIT_TOGETHER_NO_SIGNOFF=1
export PATH="$HOME/.rbenv/bin:$PATH"


eval "$(rbenv init -)"
eval "$(direnv hook zsh)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
