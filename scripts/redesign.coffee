# Description:
#   Ask hubot how long until the resign must be done
#
# Commands:
#   hubot how long do we have to finish the redesign?
#

roundDown = (num) ->
  full = num.toString()
  reg = /([\d]+)/i
  res = reg.exec(full)
  res[1]



hour = 1000 * 60 * 60
today = new Date()
finishDate = new Date('11/28/2014')

diffMs = (finishDate - today)
diffDays = roundDown(diffMs / 86400000)
diffHrs = roundDown((diffMs % 86400000) / 3600000)
diffMins = roundDown(((diffMs % 86400000) % 3600000) / 60000)
diffSecs = roundDown((((diffMs % 86400000) % 3600000) % 60000) / 1000 )

message = "You only have #{diffDays} days #{diffHrs} hours #{diffMins} minutes and #{diffSecs} seconds, now chop chop"

module.exports = (robot) ->
  robot.respond /how long do we have to finish the redesign/i, (msg) ->
    msg.send message
