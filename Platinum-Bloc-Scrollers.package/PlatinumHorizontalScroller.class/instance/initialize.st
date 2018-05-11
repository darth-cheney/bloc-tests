initialization
initialize
	super initialize.
	track := PlatinumHorizontalScrolltrack new.
	scrollbar := PlatinumHorizontalScrollbar new.
	track
		constraintsDo: [ :c |
			c horizontal matchParent ];
		margin: (BlInsets top: 1 left: 1 bottom: 0 right: 0);
		addChild: scrollbar.
	leftButton := (PlatinumScrollerButton new direction: #left).
	leftButton 
		addEventHandlerOn: BlClickEvent do: [ self moveLeft ].
	rightButton := (PlatinumScrollerButton new direction: #right).
	rightButton 
		margin: (BlInsets bottom: 0);
		addEventHandlerOn: BlClickEvent do: [ self moveRight ].
	self
		layout: (BlLinearLayout horizontal); 
		border: (BlBorder paint: Color black);
		constraintsDo: [ :c |
			c vertical exact: 16 ];
		addChildren: { track. leftButton. rightButton }.
	
	"Add event handlers"
	scrollbar addEventHandler: PlatinumHorizontalPullHandler new.
	