module.exports = class Writer
  @writeInput: (input)->
    console.log("remote: #{input.toString()}")