fs = require 'fs'
net = require 'net'
Iface = require './interface'
Writer = require './writer'

server = net.createServer (connection)->

  thisConsole = new Iface(connection)
  connection.on 'data', (data) ->
    thisConsole.writeLocalInput data

  connection.on 'close', ->
    console.log('Subscriber disconnected.');
    watcher.close();

server.listen 5432, ->
  console.log('Listening for subscribers...')
