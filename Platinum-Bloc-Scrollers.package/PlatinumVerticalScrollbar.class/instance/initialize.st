initialization
initialize
	| grip |
	super initialize.
	self
		layout: (BlFrameLayout new);
		constraintsDo: [ :c |
			c horizontal exact: 14 ].
	grip := PlatinumScrollbarGrip new.
	grip constraintsDo: [ :c |
		c frame vertical alignCenter.
		c frame horizontal alignCenter ].
	self addChild: grip.
	