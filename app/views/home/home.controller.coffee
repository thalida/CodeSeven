'use strict'

app.controller 'HomeCtrl', [() ->
	@viewname = 'home'

	@questions = [
		{
			title: 'titleA'
			answers: ['1', '2', '3']
		}
		{
			title: 'titleB'
			answers: ['1', '2', '3']
		}
		{
			title: 'titleC'
			answers: ['1', '2', '3']
		}
		{
			title: 'titleD'
			answers: ['1', '2', '3']
		}
	]

	return
]
