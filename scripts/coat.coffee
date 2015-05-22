# Description:
#   Where is Rowan's coat?

module.exports = require('./helpers/listener').create
  name: 'coat'
  pattern: /\b(coat|jacket)\b/i
  response: 'Where is your coat, Rowan?'
  defaultProbability: 10
