#
# oh-my-zsh settings
#
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agendrix"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

UNBUNDLED_COMMANDS=(knife chef)

plugins=(ruby git agendrix)

#
# Commands
#
load_dump() {
  dropdb $2
  createdb $2
  psql -d $2 < $1
}

#
# Autocorrect is more annoying than helpful
#
unsetopt correct_all

# Homebrew rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#
# ENV variables
#
export EDITOR='code --wait'
export PATH="$HOME/.bin:$PATH"

# Node
export PATH="/usr/local/opt/node@14/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@14/lib"
export CPPFLAGS="-I/usr/local/opt/node@14/include"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

#
# Team aliases
#
alias update="sudo softwareupdate -i -a; brew update; brew upgrade"
alias gdt="git difftool"
alias rclean="rake db:drop db:create db:structure:load db:migrate db:seed"
alias be="bundle exec"

#
# Local aliases
#
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
