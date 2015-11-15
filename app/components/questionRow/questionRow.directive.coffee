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
			onAnswerCb: '&onAnswer'
		}
		controllerAs: 'questionRow'
		controller: ['$element', '$attrs', ( $el, attrs ) ->
			@onChange = () =>
				@onAnswerCb({
					response: {question: @question, answer: @answer}
				})
			console.log(this)
		]
]
