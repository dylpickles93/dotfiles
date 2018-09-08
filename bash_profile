# .bash_profile

#`npm install -g https://github.com/menelaos/mocha-solarized/tarball/master` mocha solarized

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
source $HOME/.nvm/nvm.sh

alias type='type -a'
alias gs='bash ~/.refreshGitStatus.sh'
alias gd='git diff'
alias gCred='git config credential.helper store'
	alias g-cred=gCred
	alias git-cred=gCred
	alias git-credentials=gCred
alias assume-unchanged="git update-index --assume-unchanged"
alias rollback="git reset HEAD~1"
	alias git-rollback="rollback"
alias mtest="mocha test --watch"
	alias m-test="mtest"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

# Add git completion to aliases
  __git_complete g __git_main
  __git_complete co _git_checkout
fi

# Make sure you actually have those aliases defined, of course.
alias g="git" 
alias co="git checkout" 
alias gc="git commit" 
alias ga="git add"

# Setting the color of the terminal
alias setblack="/proc/`pgrep tmux | head -1`/exe select-pane -t ${TMUX_PANE} -P 'bg=colour16'"

#directory quick access
alias spv="cd ~/environment/git-repos/sales-project-view-mono/"
alias bp="nano ~/.bash_profile"
alias dotfiles="cd ~/dotfiles"

#view objects
objectDict () {
	jsonlint ./object-dictionary/$1.json | grep -i $2
}

#testing
alias mochaDot="mocha test --reporter dot --watch"
	alias mocha-dot="mochaDot"

