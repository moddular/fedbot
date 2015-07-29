'use strict';

module.exports = initRoute;

function initRoute (app, robot) {
	app.get('/', function (request, response) {
		response.render('index');
	});
}
