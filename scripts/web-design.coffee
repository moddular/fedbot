# Description:
#   Web Design
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  images = [
    'http://www.typo3-blog.com/wp-content/ie_must_die.png'
    'http://s3.amazonaws.com/theoatmeal-img/comics/design_changes/2.png'
    'http://www.baileystblog.com/wp-content/uploads/2013/06/web-design-customers.jpg'
  ]

  robot.hear /\bdesign\b/i, (msg) ->
    if randomBetween(1, 10) is 1
      msg.send msg.random images
