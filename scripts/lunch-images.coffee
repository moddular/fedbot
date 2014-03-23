# Description:
#   Lunch image when someone types lunch
#
# Commands:
#   none
#

module.exports = (robot) ->

  burger = "http://whatgifs.com/wp-content/uploads/2011/11/funny-gifs-no-more-junk-food.gif"
  fried_chicken = "http://25.media.tumblr.com/4f5085e5c9a4618f0f6a2817c186909c/tumblr_mjxzg81oUg1r1d4zvo1_500.gif"
  noodles = "http://www.ohmagif.com/wp-content/uploads/2013/05/epic-korean-man-loves-his-food.gif"

  responses = [
    "http://stream1.gifsoup.com/view1/1966132/pasta-kiss-o.gif",
    "http://stream1.gifsoup.com/view2/3308567/cool-hand-luke-o.gif",
    "http://media.giphy.com/media/CpEGxp0khZe6I/giphy.gif",
    "http://media.giphy.com/media/DCQ2I7oJoJaEM/giphy.gif",
    "http://25.media.tumblr.com/tumblr_mbkvrp6spV1rw29eto1_500.gif",
    "http://24.media.tumblr.com/87e1f086de605c0956817aac325e158b/tumblr_mvcztjQQgE1s00ervo5_250.gif",
    "http://newgifs.com/images/full/cat-loves-japanese-food.gif",
    "http://img3.wikia.nocookie.net/__cb20130204152419/piratesonline/images/4/4a/Funny-gifs-internet-food.gif",
    "http://media.thedailytouch.com/2014/01/tumblr_FOOD_GIF.gif",
    "http://1.bp.blogspot.com/-sh1GYq1Svpg/UkHgr30npmI/AAAAAAAAIGc/1FhTs6f0Aj8/s1600/Cat+riding+a+Sandwich+(Gif).gif",
    "http://d1d2e8z52bbsdm.cloudfront.net/blog/wp-content/uploads/2013/04/blog-red-panda.gif",
    "http://cdn02.cdnwp.celebuzz.com/wp-content/uploads/2013/05/18/tina-fey-bacon.gif",
    "http://25.media.tumblr.com/10a4c749ed446668590ce8f74277e9fe/tumblr_moe50xG4A31ssdhxio1_500.gif"
  ]

  responses.push(burger, fried_chicken, noodles)

  robot.hear /\b(lunch)\b/i, (msg) ->
    msg.send msg.random responses

  robot.hear /\b(burger|macdonalds)\b/i, (msg) ->
    msg.send burger

  robot.hear /\b(spit [\w'&]{1,4} roast|kfc)\b/i, (msg) ->
    msg.send fried_chicken

  robot.hear /\b(katsu|noodles)\b/i, (msg) ->
    msg.send noodles