event handling
mouseDown: evt
	(titleBar containsPoint: evt cursorPoint) ifTrue: [ 
		isDragging := true.
		 ].
	(self resizeAreaBounds containsPoint: (evt cursorPoint))
		ifTrue: [ isStretching := true ].
	self activate.
	self comeToFront.