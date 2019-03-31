as yet unclassified
drawInnerWithRect: aRect on: aCanvas
	"Draw the inner most additional border band"
	| bandColor |
	bandColor := (Color r: 170 g: 170 b: 170 range: 255).
	aCanvas
		line: (aRect origin x + 2)@(aRect origin y)
		to: (aRect origin x)@(aRect origin y + 2)
		width: 1
		color: bandColor;
		line: (aRect origin x)@(aRect origin y + 2)
		to: (aRect origin x)@(aRect corner y - 2)
		width: 1
		color: bandColor;
		line: (aRect origin x + 1)@(aRect corner y - 2)
		to: (aRect origin x + 1)@(aRect corner y - 1)
		width: 1
		color: bandColor;
		line: (aRect origin x + 1)@(aRect corner y - 1)
		to: (aRect corner x - 3)@(aRect corner y - 1)
		width: 1
		color: bandColor;
		line: (aRect corner x - 3)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect corner y - 3)
		width: 1
		color: bandColor;
		line: (aRect corner x - 1)@(aRect corner y - 3)
		to: (aRect corner x - 1)@(aRect origin y + 1)
		width: 1
		color: bandColor;
		line: (aRect corner x - 2)@(aRect origin y + 1)
		to: (aRect corner x - 2)@(aRect origin y)
		width: 1
		color: bandColor;
		line: (aRect corner x - 2)@(aRect origin y)
		to: (aRect origin x + 2)@(aRect origin y)
		width: 1
		color: bandColor.