as yet unclassified
mouseDown: evt
	super mouseDown: evt.
	evt redButtonPressed ifTrue: [
		pressed := true.
		self changed ].