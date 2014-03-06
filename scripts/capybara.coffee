# Description:
#   Get an animal sitting on a Capybara
#
# Dependencies:
#   "htmlparser": "1.7.6"
#   "soupselect": "0.2.0"
#
# Commands:
#   hubot capybara me - Grab a random GIF from http://animalssittingoncapybaras.tumblr.com/
#
# Author:
#   rowanmanning, based on unsay's animal me

Select     = require("soupselect").select
HtmlParser = require "htmlparser"

module.exports = (robot) ->
  robot.respond /capybara me/i, (msg) ->
    getRandomCapybara msg, (url) ->
      msg.send url

getRandomCapybara = (msg, cb) ->
  msg.http("http://animalssittingoncapybaras.tumblr.com/random")
    .get() (err, res, body) ->
      console.log res.headers.location
      getCapybaraImage msg, res.headers.location, (location) ->
        cb location

getCapybaraImage = (msg, location, cb) ->
  msg.http(location)
    .get() (err, res, body) ->
      handler = new HtmlParser.DefaultHandler()
      parser  = new HtmlParser.Parser handler

      parser.parseComplete body
      img = Select handler.dom, "#blog .post .image"

      console.log img
      cb img[0].attribs.src
