drawing
frameRectangle: aRect on: aCanvas
	aCanvas
		line: (aRect origin x)@(aRect corner y - 2)
		to: (aRect origin x)@(aRect origin y)
		width: 1
		color: (Color r:153 g: 153 b: 153 range: 255);
		line: (aRect origin x)@(aRect origin y)
		to: (aRect corner x - 2)@(aRect origin y)
		width: 1
		color: (Color r: 153 g: 153 b: 153 range: 255);
		line: (aRect corner x - 1)@(aRect origin y + 1)
		to: (aRect corner x - 1)@(aRect corner y - 1)
		width: 1
		color: Color white;
		line: (aRect corner x - 1)@(aRect corner y - 1)
		to: (aRect origin x + 1)@(aRect corner y - 1)
		width: 1
		color: Color white.
	aCanvas
		frameRectangle: (aRect insetBy: 1)
		color: Color black.