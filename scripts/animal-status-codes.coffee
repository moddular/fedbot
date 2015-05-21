# Description:
#   Animal status codes
#
# Commands:
#   None

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /(?:^| )200(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7153/6512628175_6a4e8ab6ba_b.jpg'

  robot.hear /(?:^| )202(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7167/6540479079_16e97a624a_b.jpg'

  robot.hear /(?:^| )401(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7148/6508023065_8dae48a30b_b.jpg'

  robot.hear /(?:^| )403(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7173/6508023617_f3ffc34e17_b.jpg'

  robot.hear /(?:^| )404(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7172/6508022985_b22200ced0_b.jpg'

  robot.hear /(?:^| )418(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7006/6508102407_a4de65687b_b.jpg'

  robot.hear /(?:^| )500(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7001/6509400855_aaaf915871_b.jpg'

  robot.hear /(?:^| )502(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7158/6508023429_735b433a36_b.jpg'

  robot.hear /(?:^| )503(?: |$)/, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'https://farm8.staticflickr.com/7157/6540643319_7945715c3a_b.jpg'
