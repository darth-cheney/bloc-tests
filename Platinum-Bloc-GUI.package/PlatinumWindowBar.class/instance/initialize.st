initialization
initialize
	super initialize.
	self
		layout: (BlLinearLayout horizontal);
		padding: (BlInsets bottom: 3);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ].
	closeButton := PlatinumWindowBarButton new.
	leftSlats := PlatinumWindowBarSlats new.
	self addChild: closeButton.
	"self addChild: leftSlats."