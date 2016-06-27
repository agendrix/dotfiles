# Add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"

#
# Commands using oh-my-zsh's methods
#
p()  { cd ~/Projects/$1; }
_p() { _files -W ~/Projects -/; }
compdef _p p
