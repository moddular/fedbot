# Description:
#   What value creating winners do all day
#
# Commands:
#   None
#
# Author:
#   moddular

module.exports = (robot) ->
  Select = require('soupselect').select
  HtmlParser = require 'htmlparser'

  robot.hear /\$THE_BUSINESS/, (msg) ->
    getRandomImage msg, (url) ->
      msg.send url if url

  getRandomImage = (msg, done) ->
    msg.http("http://welcometobusinesstown.tumblr.com/random")
      .get() (err, res, body) ->
        console.log res.headers.location
        extractImageFromPage msg, res.headers.location, (location) ->
          done location

  extractImageFromPage = (msg, location, done) ->
    msg.http(location)
      .get() (err, res, body) ->
        handler = new HtmlParser.DefaultHandler()
        parser = new HtmlParser.Parser handler
        parser.parseComplete body
        img = Select handler.dom, '.photo--image img'
        if img && img[0]
          done img[0].attribs.src
        else
          done null

