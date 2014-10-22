# Description:
#   Ask hubot how long until the resign must be done
#
# Commands:
#   hubot how long do we have to finish the redesign?
#

randomBetween = require('../lib/random').randomBetween

roundDown = (num) ->
  full = num.toString()
  reg = /([\d]+)/i
  res = reg.exec(full)
  res[1]

responses = [
	'shut up and get to it, you have a redesign to finish before the end of the day'
	'that redesign wont code itself'
	'less chat more code, you have a redesign to finish'
	'have you considered closing campfire and getting on with that redesign'
	'its always nice to hear from you but haven\'t you got a redesign to get on with'
	'the clock is ticking and and you are just wasting time now' 
]

hour = 1000 * 60 * 60
today = new Date()
finishDate = new Date('12/09/2014')
endOfDay = new Date('12/10/2014')

diffMs = (endOfDay - today)
diffDays = roundDown(diffMs / 86400000)
diffHrs = roundDown((diffMs % 86400000) / 3600000)
diffMins = roundDown(((diffMs % 86400000) % 3600000) / 60000)
diffSecs = roundDown((((diffMs % 86400000) % 3600000) % 60000) / 1000 )

message = "You only have #{diffDays} days #{diffHrs} hours #{diffMins} minutes and #{diffSecs} seconds, now chop chop"

module.exports = (robot) ->
  robot.respond /how long do we have to finish the redesign/i, (msg) ->
    msg.send message

  robot.hear /.*/, (msg) ->
    if randomBetween(1, 5) is 1 and today.toDateString() == finishDate.toDateString()
      msg.send "#{msg.message.user.name} #{msg.random responses}"