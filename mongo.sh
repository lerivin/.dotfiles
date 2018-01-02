if [ -n `which mongodb` ]; then
  alias mongo-start='brew services start mongodb'
  alias mongo-stop='brew services stop mongodb'
  alias mongo-restart='brew services restart mongodb'
fi
