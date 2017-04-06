initialization
initialize

	|rightPad bottomPad leftPad topPad greyBack whiteBack gradient|
	super initialize.
	self
		width: 13;
		height: 13;
		color: Color transparent.
	
	whiteBack := Morph new
		extent: 12@12;
		position: 1@1;
		color: Color white.
		
	greyBack := Morph new
		extent: 12@12;
		position: 0@0;
		color: (Color fromRgbTriplet: #(136 136 136)).
		
	inner := BorderedMorph new
		extent: 11@11;
		position: 1@1;
		fillStyle: self drawGradient;
		borderColor: Color black;
		borderWidth: 1.
		
	bottomPad := Morph new
		extent: 9@1;
		position: 2@9;
		color: (Color fromRgbTriplet: #(136 136 136)).
	inner addMorph: bottomPad.
	
	rightPad := Morph new
		extent: 1@9;
		position: 9@2;
		color: (Color fromRgbTriplet: #(136 136 136)).
	inner addMorph: rightPad.
	
	topPad := Morph new
		extent: 9@1;
		position: 2@0;
		color: (Color fromRgbTriplet: #(204 204 204)).
	inner addMorph: topPad.
	
	leftPad := Morph new
		extent: 1@9;
		position: 0@2;
		color: (Color fromRgbTriplet: #(204 204 204)).
	inner addMorph: leftPad.
		 		
	self addMorph: whiteBack.
	self addMorph: greyBack.
	self addMorph: inner.
	^ self.
		
	