as yet unclassified
drawOuterRect: aRect on: aCanvas
	"Draw the 3-pixel diagonal outer
	border for the button"
	aCanvas
		line: (aRect origin x + 2)@(aRect origin y)
		to: (aRect origin x)@(aRect origin y + 2)
		width: 1
		color: Color black;
		line: (aRect origin x)@(aRect origin y + 2)
		to: (aRect origin x)@(aRect corner y - 3)
		width: 1
		color: Color black;
		line: (aRect origin x)@(aRect corner y - 3)
		to: (aRect origin x + 2)@(aRect corner y - 1)
		width: 1
		color: Color black;
		line: (aRect origin x + 2)@(aRect corner y - 1)
		to: (aRect corner x - 3)@(aRect corner y - 1)
		width: 1
		color: Color black;
		line: (aRect corner x - 3)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect corner y - 3)
		width: 1
		color: Color black;
		line: (aRect corner x - 1)@(aRect corner y - 3)
		to: (aRect corner x - 1)@(aRect origin y + 2)
		width: 1
		color: Color black;
		line: (aRect corner x - 1)@(aRect origin y + 2)
		to: (aRect corner x - 3)@(aRect origin y)
		width: 1 
		color: Color black;
		line: (aRect corner x - 3)@(aRect origin y)
		to: (aRect origin x + 2)@(aRect origin y)
		width: 1
		color: Color black.
		
	