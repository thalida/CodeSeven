'use strict'

app.directive 'questionRow', [
	'$rootScope'
	'$state'
	( $rootScope, $state ) ->
		restrict: 'E'
		templateUrl: 'components/questionRow/questionRow.html'
		scope: {}
		bindToController: {}
		controllerAs: 'questionRow'
		controller: ['$element', '$attrs', ( $el, attrs ) ->
		]
]
