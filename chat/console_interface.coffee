module.exports = class ConsoleInterface
  remote: null

  # Init and capture console input
  constructor: (@remote) ->
    process.stdin.resume();
    process.stdin.setEncoding('utf8');

    process.stdin.on 'data', (data)=>
      @remote.write "remote: #{data}"

  # Write something to the console.
  writeLocalInput: (data)->
    console.log("remote: #{data.toString()}")