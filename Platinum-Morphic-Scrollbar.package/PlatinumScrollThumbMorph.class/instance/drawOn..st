as yet unclassified
drawOn: aCanvas
	| aRect |
	aRect := self bounds.
	"Fill whole rect with base color"
	aCanvas
		fillRectangle: aRect
		color: self primaryColor;
		
	"Light highlight"
	line: (aRect corner x - 2)@(aRect origin y)
	to: aRect origin
	width: 1
	color: self lightHighlightColor;
	line: aRect origin
	to: (aRect origin x)@(aRect corner y - 1)
	width: 1
	color: self lightHighlightColor;
	
	"Dark highlight color"
	line: (aRect corner x - 1)@(aRect origin y)
	to: (aRect corner x - 1)@(aRect corner y - 1)
	width: 1
	color: self darkHighlightColor;
	line: (aRect corner x - 1)@(aRect corner y - 1)
	to: (aRect origin x + 1)@(aRect corner y - 1)
	width: 1
	color: self darkHighlightColor.
	
	"Finally, draw the grip form"
	self
		drawGripInRect: aRect
		on: aCanvas.