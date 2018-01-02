if [ -n `which redis` ]; then
  alias redis-start='brew services start redis'
  alias redis-stop='brew services stop redis'
  alias redis-restart='brew services restart redis'
fi
