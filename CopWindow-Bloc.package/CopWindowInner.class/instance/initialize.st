initialization
initialize
	| baseGray outerLiningGray |
	super initialize.
	baseGray := Color fromRgbTriplet: #(204 204 204).
	outerLiningGray := Color fromRgbTriplet: #(153 153 153).
	self size: 254 @ (275 - 14).
	self background: Color white.
	self border: (BlBorder paint: Color black width: 1).

	"Create a new titleBar"
	titleBar := CopWindowTitleBar new.
	titleBar position: 2 @ 2.

	"Create the leftBar"
	leftBar := BlElement new.
	leftBar
		size: 2 @ 239;
		position: 2 @ 20;
		background: baseGray.

	"Create rightBar"
	rightBar := BlElement new.
	rightBar
		size: 2 @ 239;
		position: 250 @ 20;
		background: baseGray.

	"Create bottomBar"
	bottomBar := BlElement new.
	bottomBar
		size: 252 @ 2;
		position: 2 @ 257;
		background: baseGray.

	"Create bottomOuterLining"
	bottomOuterLining := BlElement new.
	bottomOuterLining
		size: 250 @ 1;
		position: 2 @ 259;
		background: outerLiningGray.

	"Create rightOuterLining"
	rightOuterLining := BlElement new.
	rightOuterLining
		size: 1 @ 258;
		position: 252 @ 2;
		background: outerLiningGray.

	"Create leftInnerBar"
	leftInnerBar := BlElement new.
	leftInnerBar
		size: 1 @ (261 - 24);
		position: 4 @ 20;
		background: outerLiningGray.
		
	"Create topInnerBar"
	topInnerBar := BlElement new.
	topInnerBar
		size: (254 - 8)@1;
		position: 4@20;
		background: outerLiningGray.
		
	"Create rightInnerBar"
	rightInnerBar := BlElement new.
	rightInnerBar
		size: 1@(261-24);
		position: 250@21;
		background: (Color fromRgbTriplet: #(240 240 240)).
		
	"Create bottomInnerBar"
	bottomInnerBar := BlElement new.
	bottomInnerBar
		size: (254 - 8 - 1)@1;
		position: 5@(261 - 4);
		background: (Color fromRgbTriplet: #(240 240 240)).
		
	"Create main content area with border"
	contentArea := BlElement new.
	contentArea
		size: (254 - 10)@(261 - 26);
		position: 5@21;
		background: (Color fromRgbTriplet: #(221 221 221));
		border: (BlBorder paint: (Color black) width: 1).
	
	self
		addChildren:
			{titleBar.
			leftBar.
			rightBar.
			bottomBar.
			bottomOuterLining.
			rightOuterLining.
			leftInnerBar.
			topInnerBar.
			rightInnerBar.
			bottomInnerBar.
			contentArea}.