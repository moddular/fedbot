# Description:
#   Get a stoned cat
#
# Commands:
#   hubot stoned cat me - Grab a random image from http://stonedcats.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('../lib/me-tumblr')({
    robot: robot,
    name: 'stoned cat',
    tumblr: 'stonedcats.tumblr.com',
    selector: '.post-content .media img'
  })
