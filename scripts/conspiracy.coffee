# Description:
#   FEDbot is controlled by a secret government organisation
#
# Commands:
#   hubot conspiracy me - Get a random conspiracy theory
#
# Author:
#   rowanmanning

rand = require('../lib/random').randomValue

module.exports = (robot) ->
  robot.respond /conspiracy me\b/i, conspiracyMe

conspiracyMe = (msg) ->
  msg.send getRandomConspiracy()

getRandomConspiracy = ->
  getRandomFormat()()

getRandomFormat = ->
  rand [
    (-> "#{getRandomEntity()} are #{getRandomAction()} through #{getRandomAffectant()} in our #{getRandomAffectee()}")
    (-> "#{getRandomEntity()} are #{getRandomAction()} through #{getRandomThing()}")
    (-> "#{getRandomEntity()} have infiltrated #{getRandomEntity()} and are #{getRandomAction()}")
    (-> "All #{getRandomHouseholdItem()} are #{getRandomActionOnThingBy()} #{getRandomEntity()}")
  ]

getRandomEntity = ->
  rand [
    'The Government'
    'The Police'
    'The FBI'
    'Religious Leaders'
    'Terrorists'
    'The French'
    'Digital Science'
    'The Portuguese'
    'Diabetics'
    'The Illuminati'
    'Apple'
    'Microsoft'
    'Google'
  ]

getRandomAction = ->
  rand [
    'controlling us'
    'controlling our thoughts'
    'monitoring us'
    'watching us'
    'artificially inseminating women'
    'brainwashing us'
    'killing us'
    'giving us cancer'
    'giving us autism'
    'making us stupid'
    'killing the world\'s goat population'
    'making Front-End developers redundant'
  ]

getRandomActionOnThingBy = ->
  rand [
    'being controlled by'
    'being monitored by'
    'being watched by'
    'sending messages to'
  ]

getRandomAffectant = ->
  rand [
    'drugs'
    'bacteria'
    'cameras'
    'microphones'
    'placebos'
    'hidden messages'
    'subliminal messages'
  ]

getRandomThing = ->
  rand [
    'drugs'
    'placebos'
    'the Doge meme'
    'Goats'
    'loud keyboards'
    'cute kitten pictures'
    'hidden messages'
    'subliminal messages'
    'the national grid'
    'television'
    'radio waves'
  ]

getRandomHouseholdItem = ->
  rand [
    'toasters'
    'kettles'
    'computer keyboards'
    'televisions'
    'macbooks'
    'computers'
    'cars'
    'children\'s toys'
    'TV remotes'
    'games consoles'
  ]

getRandomAffectee = ->
  rand [
    'water'
    'weather'
    'food'
    'payslips'
    'toilet cisterns'
    'medicine'
    'air'
    'pet food'
    'fizzy drinks'
  ]
