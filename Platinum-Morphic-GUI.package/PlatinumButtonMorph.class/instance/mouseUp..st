event handling
mouseUp: evt
	(self containsPoint: evt cursorPoint)
		ifTrue: [ 
			self baseColor: (Color r: 221 g: 221 b: 221 range: 255).
			self changed.
			pressed ifTrue: [ self performClick ].
			pressed := false ].