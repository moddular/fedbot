# Description:
#   Campus...

module.exports = require('./helpers/listener').create
  name: 'campus'
  pattern: /\bcampus( digital|\.macmillan)\b/i
  response: 'http://i.imgur.com/oMBWa7L.gif'
  defaultProbability: 50
