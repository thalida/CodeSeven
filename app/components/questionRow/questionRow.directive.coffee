'use strict'

app.directive 'questionRow', [
	'$rootScope'
	'$state'
	( $rootScope, $state ) ->
		restrict: 'E'
		templateUrl: 'components/questionRow/questionRow.html'
		scope: {}
		bindToController: {
			index: '@'
			question: '='
			answer: '='
		}
		controllerAs: 'questionRow'
		controller: ['$element', '$attrs', ( $el, attrs ) ->
			console.log(this)
		]
]
