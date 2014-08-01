# Description:
#   Get information on the next MEATup.
#
# Commands:
#   hubot when/where is the next MEATup? - Displays the date for the next MEATup
#   hubot list future MEATup venues - Displays a list of future MEATup venues for use in polling
#

moment = require 'moment'

module.exports = (robot) ->

  robot.respond /(when|where)('?s| is)( the next)? meat\s?up\??\b/i, (msg) ->
    msg.http('http://meatup.info/api/events.json').get() (err, res, body) ->
      if res.statusCode < 400
        events = JSON.parse body
        nextEvent = events[events.length - 1]
        nextEvent.date = moment(nextEvent.date).format('Do MMMM')
        msg.send "The next MEATup is on the #{nextEvent.date} at #{nextEvent.venue.name}"
      else
        msg.send 'I don\'t know – meatup.info seems to be broken'

  robot.respond /list future meatup venues/i, (msg) ->
    msg.http('http://meatup.info/api/future.json').get() (err, res, body) ->
      if res.statusCode < 400
        msg.send JSON.parse(body).map((venue) -> venue.name).join(', ')
      else
        msg.send 'I don\'t know – meatup.info seems to be broken'
