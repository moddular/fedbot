# Description:
#   What the fuck?
#
# Commands:
#   None
#

createImageListPage = require './helpers/http-image-list'

module.exports = (robot) ->

  responses = [
    'http://i.imgur.com/pKJyCWG.gif'
    'http://www.reactiongifs.com/wp-content/uploads/2013/06/what-the-f-tom-delonge.gif'
    'http://i.imgur.com/R6MM74K.gif'
    'http://replygif.net/i/1154.gif'
    'http://i.imgur.com/W1dwdKd.gif'
  ]

  robot.hear /\b(wtf|what the (fuck|flip|frig|f\*\*(\*|k)|f))\b/i, (msg) ->
    msg.send msg.random responses

  createImageListPage(
    robot,
    '/wtf',
    'WTF images',
    'A list of all the wtf images:',
    responses
  )
