initialization
initialize
	| crossBar |
	super initialize.
	crossBar := BorderedMorph new
		extent: 11@3;
		position: 1@5;
		color: (Color transparent);
		borderColor: (Color black);
		borderWidth: 1.
	self addMorph: crossBar.
	^ self.