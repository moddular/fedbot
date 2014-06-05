# Description:
#   Get all your FED images
#
# Dependencies:
#   "underscore": "~1.5"
#
# Configuration:
#   None
#
# Commands:
#   hubot code review table - Show a table of code reviewers for the day
#
# Author:
#   rowanmanning

_ = require 'underscore'

feds = [
  "Adam",
  "Alex",
  "Andrew",
  "Dan",
  "Dawn",
  "Glynn",
  "Hollie",
  "Jack",
  "Jose",
  "Jude",
  "Nick",
  "Phil",
  "Rowan"
]

module.exports = (robot) ->

  generatePairs = ->
    picks = _.sample(feds, feds.length)
    ([fed, picks[i]] for fed, i in feds)

  outputPair = (pair) ->
    if pair[0] == pair[1]
      "#{pair[0]} needs to ask someone nicely"
    else
      "#{pair[0]}'s code is being reviewed by #{pair[1]} today"

  getDateToday = ->
    (new Date()).toISOString().split("T")[0]

  getPairsForToday = ->
    today = getDateToday()
    if robot.brain.get("lastCodeReviewGenerationDate") != today
      robot.brain.set "lastCodeReviewGenerationDate", today
      robot.brain.set "codeReviewTable", generatePairs()
    robot.brain.get "codeReviewTable"

  robot.respond /code review table/i, (msg) ->
    msg.send (outputPair pair for pair in getPairsForToday()).join("\n")
