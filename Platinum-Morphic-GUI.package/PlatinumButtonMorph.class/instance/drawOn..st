drawing
drawOn: aCanvas
	pressed 
		ifTrue: [
			self drawPressedFillRect: (self bounds insetBy: self borderWidth) on: aCanvas ]
		ifFalse: [
			self drawFillRect: (self bounds insetBy: self borderWidth) on: aCanvas ].
		
	aCanvas
		fillRectangle: self bounds
		fillStyle: Color transparent
		borderStyle: self borderStyle