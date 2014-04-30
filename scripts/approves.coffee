# Description:
#   Approval
#
# Commands:
#   None
#

createImageListPage = require '../lib/http-image-list'

module.exports = (robot) ->

  responses = [
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lq2fc1GJ0h1qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/984065.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/cena_whistling_gif.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/jack_nicholson_approve_gif.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_m1ebx5RtET1qjdx0q.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_m1e5h605dX1rqfhi2o1_500.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lzdc6nNjNX1rp7jydo1_500.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lwobmpkPmB1r6aoq4o1_400.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lxndkjUMFl1rn28qio1_500.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/ufc_approve_gif.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_m1u6xxX9b31r7qh7w.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lq2fgkZcMm1qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lq2ffcezuP1qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lq2f7zadIP1qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lq2f6qvNvL1qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lwsb2bdpQ41qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lrbil8nF2z1qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_lq4b4yIDcZ1qht847.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_m1s689mlfX1r4t9iz.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_m1q9pm31EM1rp7jydo1_250.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_m1f4t7wzmS1r7032do1_500.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_ltcxorUo1x1qm32ino1_250.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_ll3oeqQXbe1qbvaudo1_500.gif",
    "http://clutch.mtv.com//wp-content/uploads/clutch/2012/04/tumblr_m106qgTIZS1r3zat8.gif",
    "http://i.imgur.com/MZtvuUW.jpg",
    "http://i.imgur.com/Mrd5Apn.jpg"

  ]

  robot.hear /\b(approv(es?|al)|endorse(s|ment)?)\b/i, (msg) ->
    msg.send msg.random responses

  createImageListPage(
    robot,
    '/approves',
    'Approval images',
    'A list of all the approval images:',
    responses
  )
