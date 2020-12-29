drawing
drawLightHighlight: aRect on: aCanvas
	aCanvas
		line: (aRect corner x - 2)@(aRect origin y + 2)
		to: (aRect corner x - 2)@(aRect corner y - 3)
		width: 1
		color: secondLightColor;
		line: (aRect corner x - 3)@(aRect corner y - 3)
		to: (aRect corner x - 3)@(aRect corner y - 2)
		width: 1
		color: secondLightColor;
		line: (aRect corner x - 3)@(aRect corner y - 2)
		to: (aRect origin x + 2)@(aRect corner y - 2)
		width: 1
		color: secondLightColor.