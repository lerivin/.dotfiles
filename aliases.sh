function dbReset() {
  pg_ctl -D /usr/local/var/postgres stop -s -m fast
  pg_ctl -D /usr/local/var/postgres -l logfile start
}

function dbClean() {
  dbReset
  bundle exec rake db:drop db:create
}

function dbImport() {
  dbClean
  psql -U aaron -d pedanco -f $1
}

function dbDump() {
  pg_dump pedanco -f $1
}

alias sub='open -a "/Applications/Sublime Text 3.app"'
alias z="zeus"
alias zc="zeus c"
alias zs="zeus rspec"
alias zdb='zeus dbconsole'
alias zr='zeus rails'
alias jta='RAILS_ENV=test bundle exec rake spec:javascript'
alias dbr=dbReset
alias dbc=dbClean
alias dbimport=dbImport
alias dbdump=dbDump
alias hosts='sudo code /private/etc/hosts'
alias dbsetup='rake db:drop db:create db:migrate db:seed db:test:prepare --trace'

alias ll='ls -als'
alias lt='ls -alst'

# Angular 4 CLI

alias ngComp='ng generate component'
alias ngMod='ng generate module'
