initialization
initialize
	super initialize.
	arrow := (PlatinumScrollerArrow new direction: #up).
	self
		layout: (BlFrameLayout new);
		constraintsDo: [ :c |
			c vertical exact: 16.
			c horizontal exact: 16 ].
	arrow constraintsDo: [ :c |
		c frame horizontal alignCenter.
		c frame vertical alignCenter ].
	self addChild: arrow.
	
	
	