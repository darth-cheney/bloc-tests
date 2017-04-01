initialization
initializeDragHandlers
	"Set up handlers for dragging the window.
	 Note that the drag should happen only
	 on the titleBar, but that the whole
	 window should move in space."
	self addEventHandler: (BlEventHandler
		on: BlDragStartEvent
		do: [ :anEvent | 
			| selfGlobalPosition newGlobalPosition |
			anEvent consumed: true.
			
			selfGlobalPosition := self positionInSpace.
			newGlobalPosition := self space root globalPointToLocal: selfGlobalPosition.
			newGlobalPosition := newGlobalPosition.
			
			self invalidate.
			self parent detachChild: self.
			self space root addChild: self.
			self relocate: newGlobalPosition.
			self invalidate.
			self dragOffset: (anEvent position - newGlobalPosition).
	]).

	self addEventHandler: (BlEventHandler
		on: BlDragEvent
		do: [ :anEvent | 
			| aPosition |
			anEvent consumed: true.
			aPosition := anEvent position - self dragOffset.
			self relocate: aPosition ]).