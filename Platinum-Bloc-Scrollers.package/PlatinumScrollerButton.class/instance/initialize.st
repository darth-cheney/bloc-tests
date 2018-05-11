initialization
initialize
	super initialize.
	self
		layout: (BlFrameLayout new);
		constraintsDo: [ :c |
			c vertical exact: 16.
			c horizontal exact: 16 ];
		direction: #down.
	
	
	