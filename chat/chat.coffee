net = require 'net'
ConsoleInterface = require './console_interface'

server = net.createServer (connection)->

  thisConsole = new ConsoleInterface(connection)
  connection.on 'data', (data) ->
    thisConsole.writeLocal data

  connection.on 'close', ->
    console.log('Subscriber disconnected.');
    watcher.close();

server.listen 5432, ->
  console.log('Listening for subscribers...')
