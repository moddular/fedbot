# Description:
#   Get information about listener probabilities
#
# Commands:
#   hubot get probability <name> - Get the probability of a <name> listener being triggered
#   hubot get probabilities - Get a list of all listener probabilities
#   hubot set probability <name> <value> - Set the probability of a <name> listener being triggered to <value>

listener = require('./helpers/listener')

module.exports = (robot) ->

  robot.respond /get probability ([a-z0-9\-\_]+)/i, (msg) ->
    name = msg.match[1]
    probability = listener.getProbability(robot, name) || 1
    msg.send "Probability for #{name} is 1 in #{probability}"

  robot.respond /set probability ([a-z0-9\-\_]+) (\d+)/i, (msg) ->
    name = msg.match[1]
    probability = msg.match[2]
    listener.setProbability(robot, name, parseInt(probability, 10))
    msg.send "Probability for #{name} set to 1 in #{probability}"

  robot.respond /(list|get) probabilities/i, (msg) ->
    probabilities = listener.getProbabilities(robot)
    output = []
    for name in Object.keys(probabilities)
      output.push("#{name}: 1 in #{probabilities[name]}")
    output.sort()
    msg.send output.join('\n')
