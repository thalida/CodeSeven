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
			@index = parseInt( @index, 10 )
			@questionNum = @index + 1

			@onChange = () =>
				@onAnswerCb({
					response: {index: @index, question: @question, answer: @answer}
				})
			console.log(this)
		]
]
