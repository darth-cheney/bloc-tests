initialization
initialize
	super initialize.
	self
		background: Color white;
		border: (BlBorder paint: (Color black) width: 1);
		layout: (BlGridLayout vertical cellSpacing: 0);
		size: self defaultSize;
		effect: (BlDropShadowEffect color: (Color gray) width: 1 offset: 1);
		dragOffset: 0.
	
	"Add the title bar"
	titleBar := CopWindowTitleBar new.
	titleBar
		constraintsDo: [ :c |
			c horizontal matchParent ];
		margin: (BlInsets top: 2 right: 2 bottom: 0 left: 2).

	"Mid Area, which will also contain the contents."
	midArea := BlElement new.
	midArea
		background: (Color r: 204 g: 204 b: 204 range: 255);
		layout: (BlLinearLayout horizontal);
		margin: (BlInsets top: 0 right: 2 bottom: 2 left: 2);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ].
	contentArea := BlElement new.
	contentArea
		background: (Color r: 221 g: 221 b: 221 range: 255);
		border: (BlBorder paint: (Color black) width: 1);
		margin: (BlInsets top: 2 right: 2 bottom: 2 left: 2);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ].
	midArea addChild: contentArea.
	
	"Add parts to main bloc"
	self addChildren: { 
		titleBar. midArea }.
	
	"Setup the drag event handlers"
	self initializeDragHandlers.
		
	"Add double click event handler
	 based on titlebar only."
	titleBar addEventHandler: (BlEventHandler
		on: BlDblClickEvent 
		do: [ :evt | BlElementSelection on: self]).
	^ self
	