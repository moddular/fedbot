
Select = require('soupselect').select
HtmlParser = require 'htmlparser'

module.exports = (opts) ->

  meRegExp = new RegExp "#{opts.name} me", 'i'

  opts.robot.respond meRegExp, (msg) ->
    getRandomImage msg, (url) ->
      msg.send url

  getRandomImage = (msg, done) ->
    msg.http("http://#{opts.tumblr}/random")
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
        img = Select handler.dom, opts.selector
        done img[0].attribs.src
