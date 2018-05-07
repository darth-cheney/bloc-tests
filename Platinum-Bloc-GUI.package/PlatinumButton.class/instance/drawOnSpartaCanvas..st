drawing
drawOnSpartaCanvas: aCanvas
	self drawBlackBorderOn: aCanvas inRect: (self innerRect).
	pressed 
		ifTrue: [ 
			self drawPressedInnerHighlightsOn: aCanvas inRect: (self innerRect).
			self drawPressedInnerShadowsOn: aCanvas inRect: (self innerRect)]
		ifFalse: [ 
			self drawInnerShadowsOn: aCanvas inRect: (self innerRect).
			self drawInnerHighlightOn: aCanvas inRect: (self innerRect) ].
	self drawTextOnCanvas: aCanvas.