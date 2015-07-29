'use strict';

module.exports = initRoute;

function initRoute (app) {
	app.get('/', function (request, response) {
		response.render('index');
	});
}
