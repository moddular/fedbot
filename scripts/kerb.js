// Description:
//   Eat Street / Kerb Traders List for the week ahead
//
// Commands:
//   hubot kerb me - Get a list of KERB traders for the week ahead
//
// Dependencies:
//   cheerio
//   request
//
// Author:
//   Dawn Budge, then converted to JS by Rowan Manning

'use strict';

var cheerio = require('cheerio');
var request = require('request');

module.exports = kerb;

function kerb (robot) {
	robot.respond(/\b(kerb|what'?s on kerb\??)\b/i, whatsOnKerb.bind(null, robot));
}

function whatsOnKerb (robot, response) {
	request.get('http://www.kerbfood.com/kings-cross/', function (error, httpResponse, body) {
		if (error || httpResponse.statusCode !== 200) {
			response.send('I couldn\'t get KERB data because of a stupid error. Look at the logs.');
			return console.error(error ? error.stack : 'HTTP Error ' + httpResponse.statusCode);
		}
		var days = scrapeDataFromHtml(body);
		var attachment = {
			message: {
				room: response.message.room
			},
			content: {
				fallback: '',
				title: 'KERB Traders for the week:',
				color: '#fff422',
				fields: [],
				mrkdwn_in: ['fields']
			}
		};
		days.forEach(function (day) {
			attachment.content.fallback += '*' + day.name + ':*\n';
			attachment.content.fields.push({
				title: day.name,
				value: day.traders.map(function (trader) {
					return trader.name + ': _' + trader.description + '_';
				}).join('\n') + '\n'
			});
		});
		attachment.content.fallback = attachment.content.fallback.trim();
		robot.emit('slack-attachment', attachment);
	});
}

function scrapeDataFromHtml (html) {
	var $ = cheerio.load(html);
	return $('#rota .rota_panel > ul > li').map(function () {
		var $day = $(this);
		return {
			name: $day.attr('rel'),
			traders: getTraderDataForDay($, $day)
		};
	}).get();
}

function getTraderDataForDay ($, $day) {
	return $day.find('h4').map(function () {
		var $trader = $(this);
		return {
			name: $trader.text(),
			description: $trader.next('p').text()
		};
	}).get();
}
