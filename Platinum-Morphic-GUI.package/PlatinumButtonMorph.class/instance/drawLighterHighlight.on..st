drawing
drawLighterHighlight: aRect on: aCanvas
	aCanvas
		line: (aRect origin x + 1)@(aRect corner y - 1)
		to: (aRect corner x - 2)@(aRect corner y - 1)
		width: 1
		color: firstLightColor;
		line: (aRect corner x - 2)@(aRect corner y - 2)
		to: (aRect corner x - 1)@(aRect corner y - 2)
		width: 1
		color: firstLightColor;
		line: (aRect corner x - 1)@(aRect corner y - 2)
		to: (aRect corner x - 1)@(aRect origin y + 2)
		width: 1
		color: firstLightColor.