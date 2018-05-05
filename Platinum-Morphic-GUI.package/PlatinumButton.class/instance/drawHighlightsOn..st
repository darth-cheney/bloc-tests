as yet unclassified
drawHighlightsOn: aCanvas
	aCanvas
		line: (self left + 2)@(self top + 2)
		to: (self left + 2)@(self bottom - 2)
		color: Color white.
	aCanvas
		line: (self left + 3)@(self top + 2)
		to: (self left + 3)@(self top + 3)
		color: Color white.
	aCanvas
		line: (self left + 3)@(self top + 2)
		to: (self right - 2)@(self top + 2)
		color: Color white.