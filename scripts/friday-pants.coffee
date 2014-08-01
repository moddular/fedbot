# Description:
#   Friday Pants
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /friday[\s-]*pants/i, (msg) ->
    msg.send 'http://i.imgur.com/7sz4giy.jpg'
