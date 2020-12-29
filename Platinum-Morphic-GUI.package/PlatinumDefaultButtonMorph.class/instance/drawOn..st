initialization
drawOn: aCanvas
	| aRect |
	aRect := self bounds insetBy: (self borderWidth + 3).
	super drawOn: aCanvas.
	pressed
		ifTrue: [
			self drawPressedFillRect: aRect on: aCanvas ]
		ifFalse: [
			self drawFillRect: aRect on: aCanvas ].
		
		
	