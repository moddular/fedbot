# Description:
#   Wow. Such Doge
#
# Dependencies:
#   "htmlparser": "1.7.6"
#   "soupselect": "0.2.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot doge me - Wow. Such Doge
#
# Author:
#   rowanmanning

Select     = require("soupselect").select
HtmlParser = require "htmlparser"

module.exports = (robot) ->
  robot.respond /doge me/i, (msg) ->
    getRandomDoge msg, (url) ->
      msg.send url

getRandomDoge = (msg, done) ->
  msg.http("http://shibe-doge.tumblr.com/random")
    .get() (err, res, body) ->
      getImageFromPage msg, res.headers.location, (location) ->
        done location

getImageFromPage = (msg, location, done) ->
  msg.http(location)
    .get() (err, res, body) ->
      handler = new HtmlParser.DefaultHandler()
      parser  = new HtmlParser.Parser handler

      parser.parseComplete body
      img = Select handler.dom, "#contents .post .image img"

      if img[0]
        done img[0].attribs.src
      else
        done "http://i0.kym-cdn.com/photos/images/newsfeed/000/581/296/c09.jpg"
