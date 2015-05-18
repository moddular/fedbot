# Description:
#   Get information about the Cakelog.
#
# Commands:
#   hubot cakelog - Displays the last 3 Cakelogs
#   hubot cakelog X - Displays the last X Cakelogs
#   hubot cakelog leaderboard - Displays the Cakelog leaderboard
#   hubot is there cake? - Get whether there's cake today
#

moment = require 'moment'

module.exports = (robot) ->

  CAKELOG_ERROR = 'The Cakelog is down!'

  robot.respond /cakelogs?$/i, (msg) ->
    listCakelogs msg, 3

  robot.respond /cakelogs? (\d+)$/i, (msg) ->
    listCakelogs msg, msg.match[1]

  robot.respond /cakelog leaderboard$/i, (msg) ->
    listLeaders msg

  robot.respond /is there cake/i, (msg) ->
    isThereCake msg, getTodaysDate()

  listCakelogs = (msg, count) ->
    callApi msg, 'cakelogs', (cakelogs) ->
      if !cakelogs
        msg.send CAKELOG_ERROR
      else
        msg.send cakelogs.slice(0, count).map((cakelog) -> "*#{cakelog.date}: #{cakelog.person.name} brought cake in!*\n#{cakelog.description}\n_" + cakelog.tags.join(', ') + '_').join('\n\n')

  listLeaders = (msg) ->
    callApi msg, 'people', (people) ->
      if !people
        msg.send CAKELOG_ERROR
      else
        msg.send people.sort(soryByCakelogCount).slice(0, 3).map((person) -> "*#{person.name}:* #{person.cakelogs.length} Cakelogs").join('\n')

  isThereCake = (msg, date) ->
    callApi msg, 'cakelogs', (cakelogs) ->
      if !cakelogs
        msg.send CAKELOG_ERROR
      else
        todaysCake = null
        for cakelog in cakelogs
          if cakelog.date == date
            todaysCake = cakelog
            break
        if todaysCake
          msg.send "Yes, there's cake from #{todaysCake.person.name}!\n#{todaysCake.description}\n_" + todaysCake.tags.join(', ') + '_'
        else
          msg.send 'OMG there\'s no cake :scream:'

  soryByCakelogCount = (a, b) ->
    b.cakelogs.length - a.cakelogs.length

  getTodaysDate = ->
    (new Date()).toISOString().split('T')[0]

  callApi = (msg, endpoint, done) ->
    msg.http("http://thefeds.github.io/cakelog/api/#{endpoint}.json").get() (err, res, body) ->
      if !err and res.statusCode == 200
        try
          json = JSON.parse body
          done json
        catch err
          null
      else
        null
