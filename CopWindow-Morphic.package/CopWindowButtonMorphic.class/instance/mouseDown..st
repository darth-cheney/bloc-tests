event handling
mouseDown: evt
	(self containsPoint: evt cursorPoint) ifTrue: [ 
		isPressedDown := true.
		inner fillStyle: (self drawPressedGradient) ].