# Description:
#   Ask hubot how long until someone's notice period is served
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

nicknames =
  'Phil Booth': 'Pb'

module.exports = (robot) ->
  name = msg.message.user.name

  robot.respond /how long until phil leaves/i, (msg) ->
    msg.send getResponse name

  robot.hear /how long until i leave/i, (msg) ->
    if name == 'Phil Booth'
      msg.send getResonse name
    else
      msg.send 'No idea, mate.'

getResponse = (name) ->
  mapTime Date.now(), nicknames[name] || user

mapTime = (time, name) ->
  difference = endOfPhil - time

  if difference < minute
    return "#{name}'s gone!"

  if difference > week
    return "Well this sucks, #{name}. You're stuck here for #{formatTime difference, 'week'}. :("

  if difference > day
    return "Put your feet up, #{name}! You're officially chilling for #{formatTime difference, 'day'}!"

  if difference > hour
    return "Delete the incriminating data, #{name}! There's only #{formatTime difference, 'hour'} to go!"

  "Start packing, #{name}! Only #{formatTime difference, 'minute'} left!"

formatTime = (difference, period) ->
  periodCount = Math.round difference / periods[period]

  if periodCount == 1
    "a #{period}"
  else
    "#{periodCount} #{period}s"

