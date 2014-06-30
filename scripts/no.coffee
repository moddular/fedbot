# Description:
#   Nooooooo!!!!

createImageListPage = require '../lib/http-image-list'

module.exports = (robot) ->

  responses = [
    'http://i.imgur.com/25j7zxq.gif'
    'http://i.imgur.com/qknaa5c.gif'
    'http://i.imgur.com/zFG31JP.gif'
    'http://i.imgur.com/boNyYxO.gif'
  ]

  robot.hear /\b(no!+|no+)\b/i, (msg) ->
    msg.send msg.random responses

  createImageListPage(
    robot,
    '/no',
    'Noooo images',
    'A list of all the no images:',
    responses
  )
