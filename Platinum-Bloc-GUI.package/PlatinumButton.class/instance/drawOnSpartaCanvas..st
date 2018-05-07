drawing
drawOnSpartaCanvas: aCanvas
	self drawBlackBorderOn: aCanvas.
	pressed 
		ifTrue: [ 
			self drawPressedInnerHighlightsOn: aCanvas.
			self drawPressedInnerShadowsOn: aCanvas ]
		ifFalse: [ 
			self drawInnerShadowsOn: aCanvas.
			self drawInnerHighlightOn: aCanvas ].
	self drawTextOnCanvas: aCanvas.