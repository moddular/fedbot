# Description:
#   Get a bride throwing a cat
#
# Commands:
#   hubot marry me - Grab a random GIF from http://bridesthrowingcats.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('../lib/me-tumblr')({
    robot: robot,
    name: 'marry',
    tumblr: 'bridesthrowingcats.com',
    selector: '#primary .img_container img'
  })
