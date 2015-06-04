# Description:
#   Ask hubot how long until someone's notice period is served
#
# Commands:
#   hubot how long until phil leaves?
#   hubot how long until andrewmee leaves?
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

ends =
  'pb': (new Date '2015-06-23T16:30:00+01:00').getTime()
  'andrewmee': (new Date '2015-09-09T17:30:00+01:00').getTime()

nicknames =
  'tavvy': 'Professor'
  'glynnphillips': 'Glynnis'
  'pb': 'Pb'
  'rowanmanning': 'Ro-Ro'
  'andrewmee': 'Mee'

module.exports = (robot) ->
  robot.respond /how long until (\w+) leaves/i, (msg) ->
    name = msg.match[1]
    msg.send getResponse name

  robot.hear /how long until i leave/i, (msg) ->
    msg.send getResponse msg.message.user.name

getResponse = (name) ->
  mapTime Date.now(), ends[name], nicknames[name] || name

mapTime = (time, end, name) ->
  if !end
    return "No idea, #{name}."

  difference = end - time

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

