# Description:
#   Three-Pint Lunch

module.exports = require('./helpers/listener').create
  name: 'three-pint-lunch'
  pattern: /(3|three)[\s-]*pints?[\s-]*(lunch|watkins)?|3pl/i
  response: 'http://i.imgur.com/CNcSa5v.jpg'
  defaultProbability: 1
