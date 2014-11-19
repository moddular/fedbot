# Description:
#   Get Hubot to write you a biography
#
# Commands:
#   hubot bio me - Get a random biography
#
# Author:
#   hollsk

randomValue = require('../lib/random').randomValue
randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->
  robot.respond /bio ([a-z0-9\s\-]+)/i, (msg) ->
    who = msg.match[1]
    if who == 'me'
      msg.reply generateBio()
    else
      users = robot.brain.usersForFuzzyName who
      if users.length == 0
        msg.reply "I don't know who #{who} is"
      else if users.length > 1
        msg.reply 'I\'m not sure who you mean, one of these? ' + users.map((user) -> user.name).join(', ')
      else
        msg.send users[0].name + ' ' + generateBio()

generateBio = ->
  "is #{randomValue(adjectives)} #{randomValue(vocations)} with #{randomBetween(2, 15)} #{randomValue(possessions)}."

adjectives = [
  'a trained'
  'a professional'
  'an amateur'
  'a distinguished'
  'a fraudulent'
  'a pathological'
  'an abusive'
  'an ineffectual'
  'a shit'
  'a desperate'
]

vocations = [
  'scientist'
  'pink shirt'
  'sub-middle manager'
  'faker'
  'dilettante'
  'window-licker'
  'con artist'
  'shit-stirrer'
  'taxidermist'
]

possessions = [
  'children'
  'injunctions for sexual harassment'
  'ferraris'
  'wives'
  'bitches'
  'goldfish'
  'arms'
  'jobs'
  'driving bans'
  'lunches'
  'brain cells'
  'goats'
  'knives about their person'
  'yappy little dogs'
]
