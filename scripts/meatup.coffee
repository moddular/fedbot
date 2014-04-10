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
  secondTuesOfThisMonth = getSecondTuesdayOfMonth(now)
  secondTuesOfNextMonth = getSecondTuesdayOfMonth(getFirstOfMonth(now).add('months', 1))
  meatupDate = formatDate(
    if now.unix() < secondTuesOfThisMonth.unix()
    then secondTuesOfThisMonth
    else secondTuesOfNextMonth
  )
  "The next MEATup will be on #{meatupDate}!"

getFirstOfMonth = (date) ->
  date.clone().date(1)

getFirstTuesdayOfMonth = (date) ->
  date = getFirstOfMonth(date)
  if date.day() > 2
    date.day(9)
  else
    date.day(2)

getSecondTuesdayOfMonth = (date) ->
  getFirstTuesdayOfMonth(date).day(9)

formatDate = (date) ->
  date.format('dddd Do MMMM')
