initialization
drawOn: aCanvas
	| aRect |
	super drawOn: aCanvas.
	aRect := self bounds insetBy: (self borderWidth + 3).
	pressed
		ifTrue: [
			self drawPressedFillRect: aRect on: aCanvas ]
		ifFalse: [
			self drawFillRect: aRect on: aCanvas ].
		
		
	