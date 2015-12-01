'use strict'

# ==============================================================================
#
# 	NumberTriangle Directive
# 		Implements the NumberTriangle element: <numberTriangle></numberTriangle>
#
# ------------------------------------------------------------------------------

app.directive 'numberTriangle', [
	'$rootScope'
	'$state'
	( $rootScope, $state ) ->
		restrict: 'E'
		templateUrl: 'components/numberTriangle/numberTriangle.html'
		scope: {}
		bindToController: {
			###
			twowaybound: '='
			onewaybound: '@'
			functionbound: '&'
			renamed: '=oldname'
			option: '=?'
			###
		}
		controllerAs: 'numberTriangle'
		controller: ['$element', '$attrs', ( $el, attrs ) ->
			
			console.log(this)
		]
]
