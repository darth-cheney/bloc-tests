initialization
initialize
	| grip |
	super initialize.
	self
		layout: (BlFrameLayout new);
		constraintsDo: [ :c |
			c vertical exact: 14 ].
		grip := PlatinumScrollbarGrip new.
		grip transform
			rotateBy: -90;
			apply.
		grip constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignCenter ].
		self addChild: grip.