initialization
initialize
	| scaleBox |
	super initialize.
	scaleBox := BorderedMorph new
		extent: 7@7;
		position: 1@1;
		color: (Color transparent);
		borderColor: (Color black);
		borderWidth: 1.
	self addMorph: scaleBox.
	^ self.