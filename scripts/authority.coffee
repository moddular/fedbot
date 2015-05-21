# Description:
#   You will respect my authoritah!

module.exports = require('./helpers/listener').create
  name: 'authority'
  pattern: /\b(authority|authorita+h+)\b/i
  response: 'http://i.imgur.com/NAtS7u3.jpg'
  defaultProbability: 3
