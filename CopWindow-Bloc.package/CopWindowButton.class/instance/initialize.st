initialization
initialize
	|rightPad bottomPad leftPad topPad greyBack whiteBack|
	
	super initialize.
	self size: 13@13.
	
	"Draw the white block backing.
	 It is 12 x 12 and offset by 1."
	whiteBack := BlElement new.
	whiteBack
		size: 12@12;
		position: 1@1;
		background: Color white.
	self addChild: whiteBack.
	
	"The grey background block is
	 also 12 x 12 but starts at the origin"
	greyBack := BlElement new.
	greyBack
		size: 12@12;
		position: 0@0;
		background: (Color fromRgbTriplet: #(136 136 136)).
	self addChild: greyBack.
	
	"The inner (complex) portion"
	inner := BlElement new.
	inner
		size: 11@11;
		position: 1@1;
		background: (self drawGradient);
		border: (BlBorder paint: (Color black) width: 1).
	
	"The bottom pad, offset from left
	 by 2 and at the bottom. Child of
	 inner."
	bottomPad := BlElement new.
	bottomPad
		size: 9@1;
		position: 2@9;
		background: (Color fromRgbTriplet: #(136 136 136)).
	inner addChild: bottomPad.
	
	"The right pad is offset from the left
	 all the way minus 1 and offset from the 
	top by 2. Child of inner."
	rightPad := BlElement new.
	rightPad
		size: 1@9;
		position: 9@2;
		background: (Color fromRgbTriplet: #(136 136 136)).
	inner addChild: rightPad.
	
	"Top pad is at the top but extends
	 the width of inner minus 2. Child of
	 inner."
	topPad := BlElement new.
	topPad
		size: 9@1;
		position: 2@0;
		background: (Color fromRgbTriplet: #(204 204 204)).
	inner addChild: topPad.
	
	"Left pad is along the left side
	 of inner and offset from the top by
	 2."
	leftPad := BlElement new.
	leftPad
		size: 1@9;
		position: 0@2;
		background: (Color fromRgbTriplet: #(204 204 204)).
	inner addChild: leftPad.
	
	"At this point, we should be done"
	self addChild: inner.
	self initializeEventHandlers.
	^self.
	
	
	
	