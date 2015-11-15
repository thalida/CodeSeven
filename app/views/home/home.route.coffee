'use strict'

app.config([
	'$stateProvider'
	'$urlRouterProvider'
	($stateProvider, $urlRouterProvider) ->
		$stateProvider.state('base.home', {
			url: '/home'
			templateUrl: 'views/home/home.html'
			controller: 'HomeCtrl as home'
		})
])
