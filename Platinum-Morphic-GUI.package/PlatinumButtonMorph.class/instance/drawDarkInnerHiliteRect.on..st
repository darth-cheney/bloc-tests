drawing
drawDarkInnerHiliteRect: aRect on: aCanvas
	"Draw the lower (darker) inner highlight on
	the button."
	aCanvas
		line: (aRect corner x - 1)@(aRect origin y + 1)
		to: (aRect corner x - 1)@(aRect corner y - 2)
		width: 1
		color: self darkHighlightColor;
		line: (aRect corner x - 2)@(aRect corner y - 2)
		to: (aRect corner x - 2)@(aRect corner y - 1)
		width: 1
		color: self darkHighlightColor;
		line: (aRect corner x - 2)@(aRect corner y - 1)
		to: (aRect origin x + 1)@(aRect corner y - 1)
		width: 1
		color: self darkHighlightColor.