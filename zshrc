#
# oh-my-zsh settings
#
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agendrix"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

UNBUNDLED_COMMANDS=(knife chef)

plugins=(ruby rake brew git pow agendrix)

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
export EDITOR='subl -w'
export PATH="$HOME/.bin:$HOME/.chefdk/gem/ruby/2.3.0/bin:/opt/chefdk/bin:$PATH"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

#
# Team aliases
#
alias update="sudo softwareupdate -i -a; brew update; brew upgrade"
alias gdt="git difftool"
alias rclean_schema="rake db:drop db:create db:schema:load db:fixtures:load db:seed"
alias rclean_structure="rake db:drop db:create db:structure:load db:fixtures:load db:seed"
alias rclean_migrate="rake db:drop db:create db:migrate db:fixtures:load db:seed"
alias be="bundle exec"

#
# Local aliases
#
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
