event handling
mouseUp: evt
	(self containsPoint: evt cursorPoint)
		ifTrue: [ 
			pressed ifTrue: [ self performClick ].
			pressed := false ].