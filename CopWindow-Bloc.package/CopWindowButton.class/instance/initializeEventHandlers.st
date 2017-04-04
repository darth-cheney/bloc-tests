initialization
initializeEventHandlers
	"Mouse event handlers for buttons"
	self addEventHandler: (BlEventHandler
		on: BlMouseDownEvent
		do: [ :anEvent | 
			anEvent consumed: true.
			self inner background: (self drawMouseDownGradient)]).
	
	self addEventHandler: (BlEventHandler
		on: BlMouseUpEvent
		do: [ :anEvent | 
			self inner background: (self drawGradient)]).