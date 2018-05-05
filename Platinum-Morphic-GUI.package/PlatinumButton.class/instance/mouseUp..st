as yet unclassified
mouseUp: evt
	super mouseUp: evt.
	(self containsPoint: evt cursorPoint)
		ifTrue: [ self clickAction ].
	
	pressed ifTrue: [ 
		pressed := false.
		self changed ].
	