initialization
initialize
	| inner |
	super initialize.
	weight :=0.
	self
		size: 54@14;
		layout: (BlLinearLayout horizontal);
		background: Color transparent.
	inner := BlElement new
		size: 52@12;
		layout: BlLinearLayout horizontal;
		margin: (BlInsets all: 1);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		background: Color black.
	self addChild: inner.
	bar := PlatinumProgressBarInner new.
	bar
		margin: (BlInsets all: 1);
		constraintsDo: [ :c |
			c linear horizontal alignLeft ].
	track := PlatinumProgressBarTrack new.
	track
		margin: (BlInsets top: 1 right: 1 bottom: 1 left: 0);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c linear horizontal alignLeft ].
	inner addChildren: { bar. track }.
	self 
		recalculateWidth.