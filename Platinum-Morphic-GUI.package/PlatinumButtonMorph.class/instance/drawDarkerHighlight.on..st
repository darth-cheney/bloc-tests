drawing
drawDarkerHighlight: aRect on: aCanvas
	"Draw the upper darker highlight"
	aCanvas
		line: (aRect origin x)@(aRect corner y - 2)
		to: (aRect origin x)@(aRect origin y + 1)
		width: 1
		color: firstDarkColor;
		line: (aRect origin x + 1)@(aRect origin y + 1)
		to: (aRect origin x + 1)@(aRect origin y)
		width: 1
		color: firstDarkColor;
		line: (aRect origin x + 1)@(aRect origin y)
		to: (aRect corner x - 2)@(aRect origin y)
		width: 1
		color: firstDarkColor.