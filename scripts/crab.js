// Description:
//   Crabs for all.
//
// Commands:
//   hubot crab me - Get a crab

'use strict';

module.exports = initScript;

function initScript (robot) {
	robot.respond(/crab me/i, giveACrab);
}

function giveACrab (response) {
	response.send(':crab:');
}
