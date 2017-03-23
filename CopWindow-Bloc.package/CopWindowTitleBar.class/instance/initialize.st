initialization
initialize

	| barColor |
	barColor := (Color r:204 g: 204 b: 204 range: 255).
	super initialize.
	self
		background: barColor;
		layout: (BlGridLayout horizontal cellSpacing: 3);
		constraintsDo: [ :c | c horizontal matchParent.
			c vertical exact: 19 ];
		position: 25@125.
	
	"Close Button"
	closeButton := CopWindowButton new.
	closeButton
		constraintsDo: [ :c | c grid vertical alignCenter ].
		
	"Left Slats"
	leftSlats := CopWindowSlats new.
	leftSlats
		constraintsDo: [ :c | 
			c horizontal matchParent ];
		margin: (BlInsets top: 4).
	
	"Title Text"
	title := BlTextElement new
	text: ((BrRopedText string: 'Window')
		attributes: { 
			BrFontFamilyAttribute named: 'Helvetica'.
			BrFontSizeAttribute size: 12 });
	constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent.
		c grid vertical alignCenter ];
	margin: (BlInsets top:0 right: 5 bottom: 0 left: 5).

	"Right Slats"
	rightSlats := CopWindowSlats new.
	rightSlats
		constraintsDo: [ :c | 
			c horizontal matchParent ];
		margin: (BlInsets top: 4).
	
	"Scale Button"
	scaleButton := CopWindowScaleButton new.
	scaleButton
		constraintsDo: [ :c |
			c grid vertical alignCenter ].
	
	"Collapse Button"
	collapseButton := CopWindowCollapseButton new.
	collapseButton
		constraintsDo: [ :c |
			c grid vertical alignCenter ].
	
	"Add all the parts"
	self addChildren: { closeButton. leftSlats. title. rightSlats. scaleButton. collapseButton  }.
	^ self
	
	
	
	
		
	