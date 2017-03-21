initialization
initialize

	super initialize.
	scaleBox := BlElement new.
	scaleBox
		size: 7@7;
		position: 1@1;
		background: (Color transparent);
		border: (BlBorder paint:(Color black) width: 1).
	self addChild: scaleBox.
	^ self