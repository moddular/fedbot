# Description:
#   Get a crap taxidermy
#
# Commands:
#   hubot stuff me - Grab a random image from http://crappytaxidermy.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('../lib/me-tumblr')({
    robot: robot,
    name: 'stuff',
    tumblr: 'crappytaxidermy.com',
    selector: '.post .post-photo img'
  })
