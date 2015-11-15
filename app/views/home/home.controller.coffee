'use strict'

app.controller 'HomeCtrl', [() ->
	@viewname = 'home'

	@questions = [
		{
			title: 'titleA'
			answers: ['1', '2', '3']
			action: ( params ) ->
				console.log( 'TitleA: do this', params )
		}
		{
			title: 'titleB'
			answers: ['1', '2', '3']
		}
		{
			title: 'titleC'
			answers: ['1', '2', '3']
			action: ( params ) ->
				console.log( 'TitleC: do that', params )
		}
		{
			title: 'titleD'
			answers: ['1', '2', '3']
		}
	]

	@onQuestionAnswer = ( res ) ->
		console.log( 'onQuestionAnswer:', res )
		res.question?.action?( res )

	return
]
