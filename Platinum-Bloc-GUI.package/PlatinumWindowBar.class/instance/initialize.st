initialization
initialize
	super initialize.
	self
		layout: (BlLinearLayout horizontal);
		padding: (BlInsets bottom: 3);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ];
		background: (Color r: 204 g: 204 b: 204 range: 255).
	closeButton := PlatinumWindowBarButton new.
	leftSlats := PlatinumWindowBarSlats new.
	leftSlats margin: (BlInsets left: 4 right: 4).
	scaleButton := PlatinumWindowScaleButton new.
	scaleButton margin: (BlInsets right: 3).
	hideButton := PlatinumWindowHideButton new.
	self addChild: closeButton.
	self addChild: leftSlats.
	self addChild: scaleButton.
	self addChild: hideButton.