# Description:
#   Get a guy with Zooey Deschanel's eyes
#
# Commands:
#   hubot glass me - Grab a random image from http://guyswithzooeyes.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('../lib/me-tumblr')({
    robot: robot,
    name: 'zooey',
    tumblr: 'guyswithzooeyes.tumblr.com',
    selector: '.post-content .photo img'
  })
