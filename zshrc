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

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#
# ENV variables
#
export PATH="$HOME/.bin:$PATH"

# VSCode
export EDITOR='code --wait'
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Node
export PATH="/usr/local/opt/node@18/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@18/lib"
export CPPFLAGS="-I/usr/local/opt/node@18/include"

# Ruby
export RUBYOPT='--enable-yjit'

# Ruby & MacOS bug, issue: https://github.com/rails/rails/issues/38560
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

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
