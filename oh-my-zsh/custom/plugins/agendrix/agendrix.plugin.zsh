# Add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"

#
# Commands
#
p()  { cd ~/Projects/$1; }
_p() { _files -W ~/Projects -/; }
compdef _p p

load_dump() {
  dropdb $2
  createdb $2
  psql -d $2 < $1
}
alias rclean_schema="rake db:drop db:create db:schema:load db:fixtures:load db:seed"
alias rclean_structure="rake db:drop db:create db:structure:load db:fixtures:load db:seed"
alias rclean_migrate="rake db:drop db:create db:migrate db:fixtures:load db:seed"

# Settings
#
# Autocorrect is more annoying than helpful
unsetopt correct_all
