initialization
initialize
	| h1 h2 h3 spacer |
	super initialize.
	barColor := (Color r: 40 g: 40 b: 80 range: 100).
	self 
		size: 50@10;
		background: (BlLinearGradientPaint new 
			end: 0@0;
			start: 0@(self height - 1);
			stops: self getStops);
		layout: (BlLinearLayout horizontal).
	h1 := BlElement new
		size: 1@10;
		background: barColor;
		constraintsDo: [ :c |
			c vertical matchParent.
			c linear horizontal alignLeft ].
	self addChild: h1.
	h2 := BlElement new
		size: 1@10;
		background: (Color white alpha: 0.2);
		constraintsDo: [ :c |
			c vertical matchParent.
			c linear horizontal alignLeft ].
	self addChild: h2.
	spacer := BlElement new
		background: Color transparent;
		constraintsDo: [ :c |
			c vertical matchParent.
			c horizontal matchParent.
			c linear horizontal alignCenter ].
	self addChild: spacer.
	h3 := BlElement new
		size: 1@10;
		margin: (BlInsets top: 2);
		constraintsDo: [ :c |
			c vertical matchParent.
			c linear horizontal alignRight ];
		background: (Color r: 0 g: 0 b: ((barColor blue * 100) /2) range: 100).
	self addChild: h3.
	