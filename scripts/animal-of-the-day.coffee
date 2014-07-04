# Description:
#   Find out what today's animal is

# Configuration:
#   None
#
# Commands:
#   fedbot animal of the day
#
# Author:
#   hollsk

animals = [
  'aardvark'
  'pangolin'
  'rabbit'
  'red panda'
  'sugar glider'
  'wallaby'
  'wombat'
  'numbat'
  'jerboa'
  'gundi'
  'mouse deer'
  'kinkajou'
  'fennec fox'
  'capybara'
  'platypus'
  'octopus'
  'elephant'
  'goat'
  'sloth'
  'doge'
  'panda'
  'ocelot'
]

module.exports = (robot) ->

  getDateToday = ->
    (new Date()).toISOString().split('T')[0]

  robot.respond /(animal of the day|aotd)/i, (msg) ->
    today = getDateToday()
    if robot.brain.data.animalGenerationDate != today
      robot.brain.data.animalGenerationDate = today
      robot.brain.data.animalOfTheDay = msg.random animals

    msg.send 'Today\'s animal is the ' + robot.brain.data.animalOfTheDay
