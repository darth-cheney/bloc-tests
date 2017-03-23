initialization
initialize
	super initialize.
	self layout: (BlLinearLayout vertical).
	self constraintsDo: [ :c |
		c vertical matchParent ].
	self drawSlats.
	^ self.