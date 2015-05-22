# Description:
#   Dickhead Science

module.exports = require('./helpers/listener').create
  name: 'dickhead-science'
  pattern: /\b(digital science|ds)\b/i
  response: 'http://i.imgur.com/g2kGGLS.png'
  defaultProbability: 5
