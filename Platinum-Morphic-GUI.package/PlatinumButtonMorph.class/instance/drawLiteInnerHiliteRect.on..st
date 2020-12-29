drawing
drawLiteInnerHiliteRect: aRect on: aCanvas
	"Draw the lighter, secondary highlight
	just above the dark bottom highlight"
	aCanvas
		line: (aRect corner x - 2)@(aRect origin y)
		to: (aRect corner x - 2)@(aRect corner y - 3)
		width: 1
		color: self lightHighlightColor;
		line: (aRect corner x - 3)@(aRect corner y - 3)
		to: (aRect corner x - 3)@(aRect corner y - 2)
		width: 1
		color: self lightHighlightColor;
		line: (aRect corner x - 3)@(aRect corner y - 2)
		to: (aRect origin x)@(aRect corner y - 2)
		width: 1
		color: self lightHighlightColor.