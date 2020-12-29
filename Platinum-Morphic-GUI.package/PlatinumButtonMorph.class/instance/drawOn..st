drawing
drawOn: aCanvas
	pressed 
		ifTrue: [
			self drawPressedFillRect: (self bounds insetBy: self borderWidth) on: aCanvas ]
		ifFalse: [
			self drawFillRect: (self bounds insetBy: self borderWidth) on: aCanvas ].

	super drawOn: aCanvas