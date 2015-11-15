'use strict'

app.controller 'HomeCtrl', [() ->
	@viewname = 'home'

	@questions = [
		{
			title: 'titleA'
			answers: ['1', '2', '3']
			action: () ->
				console.log( 'TitleA: do this' )
		}
		{
			title: 'titleB'
			answers: ['1', '2', '3']
		}
		{
			title: 'titleC'
			answers: ['1', '2', '3']
			action: () ->
				console.log( 'TitleC: do that' )
		}
		{
			title: 'titleD'
			answers: ['1', '2', '3']
		}
	]

	@onQuestionAnswer = ( res ) ->
		console.log( 'onQuestionAnswer:', res )
		res.question?.action?()

	return
]
