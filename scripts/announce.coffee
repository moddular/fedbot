# Description:
#   Web-hook for announcing things
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  robot.router.get '/hook/announce', (req, res) ->
    if req.query.msg
      if process.env.HUBOT_CAMPFIRE_ROOMS
        rooms = process.env.HUBOT_CAMPFIRE_ROOMS.split ','
      else
        rooms = [1]
      for room in rooms
        robot.messageRoom room, 'I HAVE AN ANNOUNCEMENT:\n' + req.query.msg
    res.end ''
