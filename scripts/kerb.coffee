# Description:
#   Eat Street / Kerb Traders List for the week ahead
#
# Commands:
#   hubot what's on kerb - Get a list of KERB traders for the week ahead
#
# Dependencies:
#   Cheerio
#
# Author:
#   Dawn Budge, after we lost the old script

Cheerio = require('cheerio')

module.exports = (robot) ->

  # this selector should get us an array of list items per day
  # this is subject to change if they redesign the page
  kerb_dom_selector = '#rota .rota_panel > ul > li'

  robot.respond /\b(what'?s on kerb\??)\b/i, (msg) ->
    getKerbWeek msg, (schedule) ->
      msg.send 'On KERB KX this week: \n' + schedule

  getKerbWeek = (msg, cb) ->
    robot.http('http://www.kerbfood.com/kings-cross/')
      .get() (err, res, body) ->
        if err
          cb "Something went wrong, the http request failed with #{err}"
        if res.statusCode isnt 200
          cb 'Something went wrong, the response was not 200'
        $ = Cheerio.load(body)
        rotaListItems = $(kerb_dom_selector)
        str = ''
        rotaListItems.each (i, day) ->
          str += '\n======================================================\n'
          str += $(day).attr('rel')
          str += '\n===========================\n'
          str += getTraders($, day)
          str += '\n======================================================\n'
          return $('<div/>').text(str)
        cb str

    getTraders = ($, day) ->
      traders = []
      $(day).find('h4').each (i, elem) ->
        str = $(elem).text()
        str += ' === '
        str += $(elem).next('p').text()
        traders.push(str)
      return traders.join('\n')
