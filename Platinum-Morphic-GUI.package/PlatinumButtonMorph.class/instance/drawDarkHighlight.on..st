drawing
drawDarkHighlight: aRect on: aCanvas
	"Draw the second lighter (but still dark)
	highlight at the top under the darker one"
	aCanvas
		line: (aRect origin x + 1)@(aRect corner y - 1)
		to: (aRect origin x + 1)@(aRect origin y + 2)
		width: 1
		color: secondDarkColor;
		line: (aRect origin x + 2)@(aRect origin y + 2)
		to: (aRect origin x + 2)@(aRect origin y + 1)
		width: 1
		color: secondDarkColor;
		line: (aRect origin x + 2)@(aRect origin y + 1)
		to: (aRect corner x - 1)@(aRect origin y + 1)
		width: 1
		color: secondDarkColor.