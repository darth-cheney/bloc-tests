as yet unclassified
drawSecondInnerShadowOn: aCanvas
	| colorStop |
	colorStop := Color r: 119 g: 119 b: 119 range: 255.
	pressed ifTrue: [
		colorStop := Color r: 136 g: 136 b: 136 range: 255 ].
	aCanvas
		line: (self bounds right - 2)@(self bounds top + 2)
		to: (self bounds right - 2)@(self bounds bottom - 3)
		color: colorStop.
	aCanvas
		line: (self bounds right - 2)@(self bounds bottom - 3)
		to: (self bounds right - 3)@(self bounds bottom - 3)
		color: colorStop.
	aCanvas
		line: (self bounds right - 3)@(self bounds bottom - 3)
		to: (self bounds right - 3)@(self bounds bottom - 2)
		color: colorStop.
	aCanvas
		line: (self bounds right - 3)@(self bounds bottom - 2)
		to: (self bounds left + 3)@(self bounds bottom - 2)
		color: colorStop.
		