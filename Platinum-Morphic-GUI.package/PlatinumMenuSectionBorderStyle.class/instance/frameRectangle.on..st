drawing
frameRectangle: aRect on: aCanvas

	"Light Corner (top right)"
	aCanvas
		line: aRect origin
		to: (aRect corner x - 1)@(aRect origin y)
		width: 1
		color: self lightColor;
		line: aRect origin
		to: (aRect origin x)@(aRect corner y - 1)
		width: 1
		color: self lightColor.
		
	"Dark Corner (bottom right)"
	aCanvas
		line: (aRect origin x + 1)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect corner y - 1)
		width: 1
		color: self darkColor;
		line: (aRect corner x - 1)@(aRect corner y - 2)
		to: (aRect corner x - 1)@(aRect origin y + 1)
		width: 1
	 	color: self darkColor.