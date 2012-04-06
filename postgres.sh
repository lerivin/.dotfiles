if [ -n `which psql` ]; then
  alias psql-start='sudo -u postgres /opt/local/lib/postgresql91/bin/pg_ctl -D /opt/local/var/db/postgresql91/defaultdb start'
  alias psql-stop='sudo -u postgres /opt/local/lib/postgresql91/bin/pg_ctl -D /opt/local/var/db/postgresql91/defaultdb stop -s -m fast'
fi
