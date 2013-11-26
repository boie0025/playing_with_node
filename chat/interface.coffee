module.exports = class Interface
  Writer = require './writer'
  remote: null

  constructor: (@remote) ->
    process.stdin.resume();
    process.stdin.setEncoding('utf8');

    process.stdin.on 'data', (data)=>
      @remote.write "remote: #{data}"

  writeLocalInput: (data)->
    Writer.writeInput data