# Description:
#   Everybody panic!
#
# Author:
#   rowanmanning

createImageListPage = require '../lib/http-image-list'

module.exports = (robot) ->

  responses = [
    'http://33.media.tumblr.com/edfb517c41ac972aa81a37d6f216a7c9/tumblr_n6odskqMDX1txplyno1_500.gif'
    'http://cdn3.sbnation.com/imported_assets/1286197/panic.gif'
    'http://i.imgur.com/Kelxb.gif'
    'http://i1008.photobucket.com/albums/af208/linus_ethos/gif/pedro-excel-saga-o.gif'
    'http://i1120.photobucket.com/albums/l488/IristheVirus17/oh-noes-everybody-panic.gif'
    'http://stream1.gifsoup.com/view3/2215198/panic-o.gif'
    'http://www.socialifechicago.com/wp-content/uploads/2012/08/panic.gif'
    'https://31.media.tumblr.com/d4fb1b3eb6643d3f613b0b9ea3c1be94/tumblr_inline_n8muycrboT1reu1xh.gif'
    'https://warosu.org/data/tg/img/0332/46/1404751534916.gif'
  ]

  robot.hear /\bpanic\b/i, (msg) ->
    msg.send msg.random responses

  createImageListPage(
    robot,
    '/panic',
    'Panic images',
    'A list of all the panic images:',
    responses
  )
