as yet unclassified
drawPressedHighlightsOn: aCanvas
	| color1 color2 |
	color1 := Color r: 68 g: 68 b: 68 range: 255.
	color2 := Color r: 85 g: 85 b: 85 range: 255.
	
	"Draw the first highlight coming in from border"
	aCanvas
		line: (self bounds left + 1)@(self bounds bottom - 3)
		to: (self bounds left + 1)@(self top + 2)
		color: color1;
		line: (self bounds left + 1)@(self top + 2)
		to: (self bounds left + 2)@(self top + 2)
		color: color1;
		line: (self bounds left + 2)@(self top + 2)
		to: (self bounds left + 2)@(self top + 1)
		color: color1;
		line: (self bounds left + 2)@(self top + 1)
		to: (self bounds right - 3)@(self top + 1)
		color: color1.
	
	"Draw the second highlight coming in from the border"
	aCanvas
		line: (self bounds left + 2)@(self bounds bottom - 2)
		to: (self bounds left + 2)@(self bounds top + 3)
		color: color2;
		line: (self bounds left + 2)@(self bounds top + 3)
		to: (self bounds left + 3)@(self bounds top + 3)
		color: color2;
		line: (self bounds left  + 3)@(self bounds top + 3)
		to: (self bounds left + 3)@(self bounds top + 2)
		color: color2;
		line: (self bounds left + 3)@(self bounds top + 2)
		to: (self bounds right - 2)@(self bounds top + 2)
		color: color2.