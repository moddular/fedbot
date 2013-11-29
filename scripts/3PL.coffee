# Description:
#   Three-Pint Lunch
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /(3|three)[\s-]*pint[\s-]*lunch|3pl/i, (msg) ->
    msg.send "http://i.imgur.com/CNcSa5v.jpg"
