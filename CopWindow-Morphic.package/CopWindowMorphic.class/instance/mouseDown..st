event handling
mouseDown: evt
	(titleBar containsPoint: evt cursorPoint) ifTrue: [ 
		isDragging := true.
		 ].
	self activate.
	self comeToFront.