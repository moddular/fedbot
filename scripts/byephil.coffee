# Description:
#   Ask hubot how long until Phil's notice period is served
#
# Commands:
#   hubot how long until phil leaves?
#   hubot how long until i leave?
#

second = 1000
minute = 60 * second
hour = 60 * minute
day = 24 * hour
week = day * 7

periods = {
  second
  minute
  hour
  day
  week
}

endOfPhil = (new Date '2015-06-23T17:00:00+01:00').getTime()
  
module.exports = (robot) ->
  robot.respond /how long until phil leaves/i, (msg) ->
    msg.send getResponse()

  robot.hear /how long until i leave/i, (msg) ->
    if msg.message.user.name == 'Phil Booth'
      msg.send getResonse()
    else
      msg.send 'No idea, mate.'

getResponse = ->
  mapTime Date.now()

mapTime = (time) ->
  difference = endOfPhil - time

  if difference > week
    return "Well this sucks, Pb. You're stuck here for #{formatTime difference, 'week'}. :("

  if difference > day
    return "Put your feet up, Pb! You're officially chilling for #{formatTime difference, 'day'}!"

  if difference > hour
    return "Delete the incriminating data, Pb! There's only #{formatTime difference, 'hour'} to go!"

  if difference > minute
    return "Start packing, Pb! Only #{formatTime difference, 'minute'} left!"

  "He's gone!"

formatTime = (difference, period) ->
  periodCount = Math.round difference / periods[period]

  if periodCount == 1
    "a #{period}"
  else
    "#{periodCount} #{period}s"

