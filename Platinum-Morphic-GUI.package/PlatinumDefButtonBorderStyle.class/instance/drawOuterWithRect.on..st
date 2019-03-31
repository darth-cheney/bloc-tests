as yet unclassified
drawOuterWithRect: aRect on: aCanvas
	aCanvas
		line: (aRect origin x + 3)@(aRect origin y)
		to: (aRect origin x)@(aRect origin y + 3)
		width: 1
		color: Color black;
		line: (aRect origin x)@(aRect origin y + 3)
		to: (aRect origin x)@(aRect corner y - 4)
		width: 1
		color: Color black;
		line: (aRect origin x)@(aRect corner y - 4)
		to: (aRect origin x + 3)@(aRect corner y - 1)
		width: 1
		color: Color black;
		line: (aRect origin x + 3)@(aRect corner y - 1)
		to: (aRect corner x - 4)@(aRect corner y - 1)
		width: 1
		color: Color black;
		line: (aRect corner x - 4)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect corner y - 4)
		width: 1
		color: Color black;
		line: (aRect corner x - 1)@(aRect corner y - 4)
		to: (aRect corner x - 1)@(aRect origin y + 3)
		width: 1
		color: Color black;
		line: (aRect corner x - 1)@(aRect origin y + 3)
		to: (aRect corner x - 4)@(aRect origin y)
		width: 1
		color: Color black;
		line: (aRect corner x - 4)@(aRect origin y)
		to: (aRect origin x + 3)@(aRect origin y)
		width: 1
		color: Color black.