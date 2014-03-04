# Description: 
#   Get information on the next MEATup.
#
# Commands:
#   hubot when is the next MEATup? - Displays the date for the next MEATup
#

moment = require 'moment'

module.exports = (robot) ->
  robot.respond /when('?s| is)( the next)? meat\s?up\??\b/i, (msg) ->
    msg.send getNextMeatupDate(moment())

getNextMeatupDate = (now) ->
  secondThursOfThisMonth = getSecondThursdayOfMonth(now)
  secondThursOfNextMonth = getSecondThursdayOfMonth(getFirstOfMonth(now).add('months', 1))
  meatupDate = formatDate(
    if now.unix() < secondThursOfThisMonth.unix()
    then secondThursOfThisMonth
    else secondThursOfNextMonth
  )
  "The next MEATup will be on #{meatupDate}!"

getFirstOfMonth = (date) ->
  date.clone().date(1)

getFirstThursdayOfMonth = (date) ->
  date = getFirstOfMonth(date)
  if date.day() > 4
    date.day(11)
  else
    date.day(4)

getSecondThursdayOfMonth = (date) ->
  getFirstThursdayOfMonth(date).day(11)

formatDate = (date) ->
  date.format('dddd Do MMMM')
