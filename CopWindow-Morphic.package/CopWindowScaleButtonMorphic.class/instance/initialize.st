initialization
initialize
	| tmp1 tmp3 |
	super initialize.
	tmp3 := BorderedMorph new.
	tmp3
		extent: 7 @ 7;
		position: 1 @ 1;
		color: Color transparent;
		borderColor: Color black.
	tmp1 := tmp3 borderWidth: 1.
	self addMorph: tmp1