event handling
mouseUp: evt
	isPressedDown ifTrue: [ 
		inner fillStyle: (self drawGradient).
		isPressedDown := false.
		(self containsPoint: evt cursorPoint) ifTrue: [ 
			self clickAction ] ].