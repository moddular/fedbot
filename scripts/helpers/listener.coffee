#
# Create a listening script which can be suppressed.
#

randomBetween = require('./random').randomBetween
randomValue = require('./random').randomValue

listener =

  create: (options) ->
    (robot) ->
      robot.hear options.pattern, (msg) ->
        probability = listener.getProbability(robot, options.name, options.defaultProbability || 1)
        if randomBetween(1, probability) is 1
          if Array.isArray(options.response)
            msg.send randomValue(options.response)
          else
            msg.send options.response

  getProbabilities: (robot) ->
    robot.brain.get('listenerProbabilities') || {}

  getProbability: (robot, name, defaultProbability) ->
    listener.getProbabilities(robot)[name] || defaultProbability

  setProbability: (robot, name, probability) ->
    probabilities = listener.getProbabilities(robot)
    probabilities[name] = probability
    robot.brain.set('listenerProbabilities', probabilities)

module.exports = listener
