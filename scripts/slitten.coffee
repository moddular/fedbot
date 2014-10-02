# Description:
#   Get a random Slitten
#
# Commands:
#   hubot slitten me - Grab a random image from http://slittens.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('../lib/me-tumblr')({
    robot: robot,
    name: 'slitten',
    tumblr: 'slittens.tumblr.com',
    selector: '.post-content img'
  })
