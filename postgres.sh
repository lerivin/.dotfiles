if [ -n `which psql` ]; then
  alias psql-start='pg_ctl -D /usr/local/var/postgres start'
  alias psql-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
fi
