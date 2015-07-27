// Description:
//   The FED swear jar
//
// Commands:
//   hubot swearjar - Count how much is in the swear jar
//   hubot swearjar by name - Count how much is in the swear jar per person
//   hubot swearjar by word - Count how many times each word is used

'use strict';

module.exports = swearJar;

var swears = new RegExp('(' + [
	'(mother ?)?fuck(ing|er|ed|s)?',
	'shit(e|ting|ter|ty|test|s)?',
	'piss(ing|er|ed|s)?',
	'cunt(ing|s)?',
	'assholes?',
	'arseholes?',
	'wankers?',
	'twats?',
	'bollo(ck|x)(ing|ed|s)?',
	'wank(ing|ed|s)?',
	'twat(ting|ted)',
	'dick(s|heads?)?',
	'cock(ing|s)?',
	'asses?',
	'arses?',
	'bastard(ing|s)?',
	'damn',
	'crap(ped|ping|per|py|s)?',
	'sod(ding|s)?',
	'bugger(ed|y|s)?',
	'judehoff'
].join('|') + ')', 'ig');

function swearJar (robot) {
	robot.hear(swears, logSwears.bind(null, robot));
	robot.respond(/swear ?jar$/i, getSwearJar.bind(null, robot));
	robot.respond(/swear ?jar by (name|person|user)$/i, getSwearJarByName.bind(null, robot));
	robot.respond(/swear ?jar by (swear|swearword|word)$/i, getSwearJarByWord.bind(null, robot));
}

function logSwears (robot, response) {
	if (Array.isArray(response.match)) {
		incrementUserSwears(robot, response.message.user.id, response.match);
	}
}

function getSwearJar (robot, response) {
	response.send('There\'s £' + getJarValue(robot) + ' in the swear jar');
}

function getSwearJarByName (robot, response) {
	response.send(getJarValueByName(robot).map(function (row) {
		return '*' + row.user + '*: £' + row.value;
	}).join('\n'));
}

function getSwearJarByWord (robot, response) {
	response.send(getJarValueByWord(robot).map(function (row) {
		return '*' + row.word + '*: ' + row.value;
	}).join('\n'));
}

function loadSwearJar (robot) {
	return robot.brain.get('swearJar') || {};
}

function saveSwearJar (robot, jar) {
	robot.brain.set('swearJar', jar);
}

function incrementUserSwears (robot, uid, swears) {
	var jar = loadSwearJar(robot);
	jar[uid] = jar[uid] || {};
	swears.forEach(function (swear) {
		swear = normalizeSwear(swear);
		jar[uid][swear] = jar[uid][swear] || 0;
		jar[uid][swear] += 1;
	});
	saveSwearJar(robot, jar);
}

function normalizeSwear (swear) {
	return swear.toLowerCase().replace(/[^a-z0-9\s\-]+/i, '');
}

function getJarValue (robot) {
	var jar = loadSwearJar(robot);
	var total = 0;
	Object.keys(jar).forEach(function (uid) {
		Object.keys(jar[uid]).forEach(function (word) {
			total += jar[uid][word];
		});
	});
	return total;
}

function getJarValueByName (robot) {
	var jar = loadSwearJar(robot);
	var records = [];
	Object.keys(jar).forEach(function (uid) {
		var user = robot.brain.userForId(uid);
		var totalForUser = 0;
		Object.keys(jar[uid]).forEach(function (word) {
			totalForUser += jar[uid][word];
		});
		records.push({
			user: user.name,
			value: totalForUser
		});
	});
	records.sort(sortByValue).reverse();
	return records;
}

function getJarValueByWord (robot) {
	var jar = loadSwearJar(robot);
	var words = {};
	Object.keys(jar).forEach(function (uid) {
		Object.keys(jar[uid]).forEach(function (word) {
			words[word] = words[word] || 0;
			words[word] += jar[uid][word];
		});
	});
	var records = Object.keys(words).map(function (word) {
		return {
			word: word,
			value: words[word]
		};
	});
	records.sort(sortByValue).reverse();
	return records;
}

function sortByValue (a, b) {
	if (a.value > b.value) {
		return 1;
	}
	if (a.value < b.value) {
		return -1;
	}
	return 0;
}
