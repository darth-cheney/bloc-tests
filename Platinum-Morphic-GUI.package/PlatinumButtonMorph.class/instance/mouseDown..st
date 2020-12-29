event handling
mouseDown: evt
	evt redButtonPressed ifTrue: [ 
		pressed := true.
		self baseColor: (Color r: 102 g: 102 b: 102 range: 255).
		self changed.
		self labelMorph color: Color white ].