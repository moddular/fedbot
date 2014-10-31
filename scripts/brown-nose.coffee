# Description:
#   The brown nose award
#
# Commands:
#   None
#

image = [
  'http://i.imgur.com/FwAW71D.jpg'
  'http://i1112.photobucket.com/albums/k497/animalsbeingdicks/abd-6-30-2014.gif'
]

module.exports = (robot) ->

  robot.hear /brown[\s\-]?nos(e|er|ing)/i, (msg) ->
    msg.send msg.random image
