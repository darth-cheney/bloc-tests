as yet unclassified
drawFirstInnerShadowOn: aCanvas
	| colorStop1 |
	colorStop1 := Color r: 170 g: 170 b: 170 range: 255.
	pressed ifTrue: [
		colorStop1 := Color r: 119 g: 119 b: 119 range: 255 ].
	aCanvas
		line: (self right - 3)@(self top + 1)
		to: (self right - 3)@(self bottom - 4)
		color: colorStop1.
	aCanvas
		line: (self right - 3)@(self bottom - 4)
		to: (self right - 4)@(self bottom - 4)
		color: colorStop1.
	aCanvas
		line: (self right - 4)@(self bottom - 4)
		to: (self right - 4)@(self bottom - 3)
		color: colorStop1.
	aCanvas
		line: (self right - 4)@(self bottom - 3)
		to: (self left + 1)@(self bottom - 3)
		color: colorStop1.