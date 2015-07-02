# Add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"

#
# Commands
#
p() { cd ~/Projects/$1; }
_p() { _files -W ~/Projects -/; }
compdef _p p

# Settings
#
# Autocorrect is more annoying than helpful
unsetopt correct_all
