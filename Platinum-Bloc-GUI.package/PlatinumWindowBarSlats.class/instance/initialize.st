initialization
initialize
	super initialize.
	self
		height: 12; 
		constraintsDo: [ :c |
			c horizontal matchParent ].