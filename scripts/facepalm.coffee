# Description:
#   Facepalm
#
# Commands:
#   None
#

module.exports = (robot) ->

  responses = [
    "https://i.chzbgr.com/completestore/12/7/10/jf83SCjk_kKyXehVRZZ8EA2.gif",
    "https://i.chzbgr.com/completestore/12/9/12/fMZy5tmVCkiOPyNd6iObCw2.gif",
    "http://ircz.de/static/pics/2013/04/19_21_30_29/doc11938873_136484953.gif",
    "http://e.asset.soup.io/asset/3147/2254_580c_390.png",
    "http://replygif.net/i/153.gif",
    "http://www.cutecatgifs.com/wp-content/uploads/2013/05/facepalm.gif",
    "http://cdn.gifbay.com/2013/12/cat_facepalm-107822.gif"
  ]

  robot.hear /\b(facepalm)\b/i, (msg) ->
    msg.send msg.random responses
