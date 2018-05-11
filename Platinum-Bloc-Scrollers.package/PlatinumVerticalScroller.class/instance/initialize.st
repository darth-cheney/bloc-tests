initialization
initialize
	super initialize.
	track := PlatinumVerticalScrolltrack new.
	scrollbar := PlatinumVerticalScrollbar new.
	track
		constraintsDo: [ :c |
			c vertical matchParent ];
		margin: (BlInsets top: 1 left: 1 bottom: 0 right: 0);
		addChild: scrollbar.
	upButton := (PlatinumScrollerButton new direction: #up).
	upButton 
		addEventHandlerOn: BlClickEvent do: [ self moveUp ].
	downButton := (PlatinumScrollerButton new direction: #down).
	downButton 
		margin: (BlInsets bottom: 0);
		addEventHandlerOn: BlClickEvent do: [ self moveDown ].
	self
		layout: (BlLinearLayout vertical); 
		border: (BlBorder paint: Color black);
		constraintsDo: [ :c |
			c horizontal exact: 16 ];
		addChildren: { track. upButton. downButton }.
	
	"Add event handlers"
	scrollbar addEventHandler: PlatinumVerticalPullHandler new.