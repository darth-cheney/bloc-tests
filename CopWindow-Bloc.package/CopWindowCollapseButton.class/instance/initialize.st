initialization
initialize
	super initialize.
	crossBar := BlElement new.
	crossBar
		size: (11@3);
		position: 1@5;
		background: (Color transparent);
		border: (BlBorder paint: (Color black) width: 1).
	self addChild: crossBar.
	^self 