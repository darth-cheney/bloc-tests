as yet unclassified
drawMidWithRect: aRect on: aCanvas
	| bandLight bandDark |
	bandLight := (Color r: 221 g: 221 b: 221 range: 255).
	bandDark := (Color r: 119 g: 119 b: 119 range: 255).
	aCanvas
		line: (aRect origin x + 2)@(aRect origin y)
		to: (aRect origin x + 2)@(aRect origin y + 1)
		width: 1
		color: bandLight;
		line: (aRect origin x + 1)@(aRect origin y + 1)
		to: (aRect origin x + 1)@(aRect origin y + 2)
		width: 1
		color: bandLight;
		line: (aRect origin x)@(aRect origin y + 2)
		to: (aRect origin x)@(aRect corner y - 3)
		width: 1
		color: bandLight;
		line: (aRect origin x + 1)@(aRect corner y - 2)
		to: (aRect origin x + 2)@(aRect corner y - 1)
		width: 1
		color: bandDark;
		line: (aRect origin x + 2)@(aRect corner y - 1)
		to: (aRect corner x - 3)@(aRect corner y - 1)
		width: 1
		color: bandDark;
		line: (aRect corner x - 3)@(aRect corner y - 2)
		to: (aRect corner x - 2)@(aRect corner y - 2)
		width: 1
		color: bandDark;
		line: (aRect corner x - 2)@(aRect corner y - 2)
		to: (aRect corner x - 2)@(aRect corner y - 3)
		width: 1
		color: bandDark;
		line: (aRect corner x - 1)@(aRect corner y - 3)
		to: (aRect corner x - 1)@(aRect origin y + 2)
		width: 1
		color: bandDark;
		line: (aRect corner x - 2)@(aRect origin y + 1)
		to: (aRect corner x - 3)@(aRect origin y)
		width: 1
		color: bandLight;
		line: (aRect corner x - 3)@(aRect origin y)
		to: (aRect origin x + 2)@(aRect origin y)
		width: 1
		color: bandLight.
		