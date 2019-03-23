initialization
initialize
	super initialize.
	self
		size: 52@12;
		layout: BlLinearLayout horizontal;
		background: Color black.
	bar := PlatinumProgressBarInner new.
	bar
		margin: (BlInsets all: 1);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c linear horizontal alignLeft ].
	track := PlatinumProgressBarTrack new.
	track
		margin: (BlInsets all: 1);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c linear horizontal alignLeft ].
	self addChildren: { bar. track }.