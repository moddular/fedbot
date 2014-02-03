# Description:
#   O RLY?
#
# Commands:
#   None
#

module.exports = (robot) ->

  responses = [
    "http://orlyowl.tripod.com/sitebuildercontent/sitebuilderpictures/orly.jpg",
    "http://files.myopera.com/drlaunch/albums/94593/thumbs/orry001.jpg_thumb.jpg",
    "http://orlyowl.tripod.com/sitebuildercontent/sitebuilderpictures/6921031l9il.jpg",
    "http://images2.fanpop.com/image/photos/13500000/O-Rly-owls-13509350-282-282.jpg",
    "http://havoc2600.files.wordpress.com/2009/03/oreilly-copy.jpg",
    "http://i.kinja-img.com/gawker-media/image/upload/t_ku-medium/1987yxksdv7v6jpg.jpg",
    "http://images2.fanpop.com/image/photos/13500000/O-Rly-owls-13509350-282-282.jpg"
  ]

  robot.hear /\b(o)\b(rly)\b/i, (msg) ->
    msg.send msg.random responses
