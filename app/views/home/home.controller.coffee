'use strict'

app.controller 'HomeCtrl', [() ->
	@viewname = 'home'

	totalRacks = 5
	maxNumberRacks = (num for num in [0..(totalRacks - 1)])

	@questions = [
		{
			title: 'On how many racks is the sum of the numbers 18 or more?'
			answers: maxNumberRacks
			action: ( params ) -> return
		}
		{
			title: 'On how many racks is the sum of the numbers 12 or more?'
			answers: maxNumberRacks
			action: ( params ) -> return
		}
		{
			title: 'On how many racks can you see the same number but in different colors (e.g. a blue 7 and a yellow 7 on one rack)?'
			answers: maxNumberRacks
			action: ( params ) -> return
		}
		{
			title: 'On how many racks can you see 3 different colors?'
			answers: maxNumberRacks
			action: ( params ) -> return
		}
		{
			title: 'On how many racks do you see only even or uneven numbers?'
			answers: maxNumberRacks
			action: ( params ) -> return
		}
		{
			title: 'On how many racks do you see at least 2 numbers that are exactly the same (the same number and the same color)?'
			answers: maxNumberRacks
			action: ( params ) -> return
		}
		{
			title: 'On how many racks do you see three consecutive numbers?'
			answers: maxNumberRacks
			action: ( params ) -> return
		}
		{
			title: 'How many colors can you see?'
			answers: ['1', '2', '3', '4', '5', '6', '7']
			action: ( params ) -> return
		}
		{
			title: 'How many colors can you see at least 3 times?'
			answers: ['0', '1', '2', '3', '4', '5', '6', '7']
			action: ( params ) -> return
		}
		{
			title: 'How many numbers do you not see at all?'
			answers: ['1', '2', '3', '4', '5', '6', '7']
			action: ( params ) -> return
		}
		{
			title: 'How many of the following numbers can you see in total: green one, black five, pink seven?'
			answers: ['0', '1', '2', '3']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more threes or more pink sixes?'
			answers: ['More threes', 'More pink sixes', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more green sixes or more yellow sevens?'
			answers: ['More green sixes', 'More yellow sevens', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more yellow twos or more yellow sevens?'
			answers: ['More yellow twos', 'More yellow sevens', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more pink sixes or more green sixes?'
			answers: ['More pink sixes', 'More green sixes', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more blue sevens or more sevens of a different color?'
			answers: ['More blue sevens', 'More sevens of a different color', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more brown or more blue numbers?'
			answers: ['More brown', 'More blue', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more red or more pink numbers?'
			answers: ['More red', 'More pink', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more green or more blue numbers?'
			answers: ['More green', 'More blue', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more yellow or more pink numbers?'
			answers: ['More yellow', 'More pink', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more black or more brown numbers?'
			answers: ['More black', 'More brown', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more black or more red numbers?'
			answers: ['More black', 'More red', 'Same amount']
			action: ( params ) -> return
		}
		{
			title: 'Do you see more green or more yellow numbers?'
			answers: ['More green', 'More yellow', 'Same amount']
			action: ( params ) -> return
		}
	]

	@onQuestionAnswer = ( res ) ->
		console.log( 'onQuestionAnswer:', res )
		res.question?.action?( res )

	return
]
