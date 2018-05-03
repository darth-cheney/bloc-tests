initialization
initialize

	super initialize.
	self 
		padding: (BlInsets all: 2);
		layout: (BlLinearLayout vertical).
	content := BlElement new.
	content
		layout: (BlLinearLayout vertical);
		constraintsDo: [ :c |
			c vertical matchParent.
			c horizontal matchParent ].
	self addChild: content.
	