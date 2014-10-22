# Description:
#   Ask hubot how long until the resign must be done
#
# Commands:
#   hubot how long left to finish the redesign?
#

hour = 1000 * 60 * 60
today = new Date()
finishDate = new Date('11/28/2014')
hoursToGo = Math.round((finishDate.getTime() - today.getTime()) / hour)
message = "You only have #{hoursToGo} hours, now chop chop"

module.exports = (robot) ->
  robot.respond /how long is left to finish the redesign/i, (msg) ->
    msg.send message
