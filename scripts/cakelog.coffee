# Description:
#   Get information about the Cakelog.
#
# Commands:
#   hubot cakelog - Displays the last 3 Cakelogs
#   hubot cakelog X - Displays the last X Cakelogs
#   hubot cakelog leaderboard - Displays the Cakelog leaderboard
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

  listCakelogs = (msg, count) ->
    callApi msg, 'cakelogs', (cakelogs) ->
      if !cakelogs
        msg.send CAKELOG_ERROR
      else
        msg.send 'Cakelogs:\n\n' + cakelogs.slice(0, count).map((cakelog) -> "#{cakelog.date}: #{cakelog.person.name} brought cake in!\n#{cakelog.description}\n[" + cakelog.tags.join(', ') + ']').join('\n\n')

  listLeaders = (msg) ->
    callApi msg, 'people', (people) ->
      if !people
        msg.send CAKELOG_ERROR
      else
        msg.send 'Cakelog Leaderboard:\n' + people.sort(soryByCakelogCount).slice(0, 3).map((person) -> "#{person.name}: #{person.cakelogs.length} Cakelogs").join('\n')

  soryByCakelogCount = (a, b) ->
    b.cakelogs.length - a.cakelogs.length

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
