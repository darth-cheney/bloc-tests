event handling
mouseDown: evt
	evt redButtonPressed ifTrue: [ 
		pressed := true.
		self fillStyle: (self class newPushedFillStyle).
		self labelMorph color: Color white ].