'use strict'

app.directive 'demo', [
	'$rootScope'
	'$state'
	( $rootScope, $state ) ->
		restrict: 'E'
		templateUrl: 'components/demo/demo.html'
		scope: {}
		bindToController: {}
		controllerAs: 'demo'
		controller: ['$element', '$attrs', ( $el, attrs ) ->
		]
]
