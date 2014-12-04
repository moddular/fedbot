# Description:
#   Everyone loves a Tardigrade
#
# Commands:
#   hubot tardigrade me - Get a random Tardigrade
#   hubot tardigrade bomb N - Get N Tardigrades

tardigrades = [
  'http://apod.nasa.gov/apod/image/1303/tardigrade_eyeofscience_960.jpg',
  'http://beforeitsnews.com/mediadrop/uploads/2013/38/71fd00e63397d507d85e8c5c7bef5baea8c80181.jpg',
  'http://protomag.com/statics/W_07_gty_vis899054_a_hz.jpg',
  'http://i.imgur.com/1nahuOt.jpg',
  'http://i.imgur.com/RnvN5kZ.jpg',
  'http://tvblogs.nationalgeographic.com/files/2014/03/tardigrade_paws.gif',
  'http://tvblogs.nationalgeographic.com/files/2014/03/tardigrade_swim.gif',
  'http://upload.wikimedia.org/wikipedia/commons/0/08/Waterbear.jpg',
  'http://i.imgur.com/kr6A8zB.jpg',
  'http://www.sierraclub.org/sierra/201203/images/GR_tardigrade.jpg',
  'http://www.wired.com/images_blogs/wiredscience/2010/11/tardigrade-300x230.jpg',
]

module.exports = (robot) ->
  me = require('./helpers/me-static')
  me(robot, 'moss piglet', tardigrades)
  me(robot, 'tardigrade', tardigrades)
  me(robot, 'waterbear', tardigrades)
