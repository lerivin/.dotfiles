if [ -n `which psql` ]; then
  alias psql-start='brew services start postgres'
  alias psql-stop='brew services stop postgres'
  alias psql-restart='brew services restart postgres'
fi
