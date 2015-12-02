#
# oh-my-zsh settings
#
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agendrix"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

UNBUNDLED_COMMANDS=(knife chef)

plugins=(ruby rake brew git pow bundler agendrix)

#
# ENV variables
#
export EDITOR='subl -w'
export PATH="$HOME/.bin:/usr/local/bin:$PATH"

# Homebrew rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

#
# Aliases
#
eval "$(hub alias -s)"
alias gdt="git difftool"
alias rake="noglob bundled_rake" # https://github.com/robbyrussell/oh-my-zsh/issues/433
alias update="sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup;"
