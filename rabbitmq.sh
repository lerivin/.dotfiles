 if [ -n `which rabbitmq` ]; then
  alias rabbit-start='brew services start rabbitmq'
  alias rabbit-stop='brew services stop rabbitmq'
  alias rabbit-restart='brew services restart rabbitmq'
fi