action
fillRectangle: aRect on: aCanvas
	"First, fill with base color"
	aCanvas fillRectangle: aRect color: self asColor.
	
	aCanvas
		"Black line along bottom"
		line: (aRect origin x)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect corner y - 1)
		width: 1
		color: Color black;
		
		"dark highlight"
		line: (aRect origin x)@(aRect corner y - 2)
		to: (aRect corner x - 1)@(aRect corner y - 2)
		width: 1
		color: self darkHighlightColor;
		line: (aRect corner x - 1)@(aRect corner y - 3)
		to: (aRect corner x - 1)@(aRect origin y)
		width: 1
		color: self darkHighlightColor;
		
		"light highlight color"
		line: (aRect corner x - 1)@(aRect origin y)
		to: aRect origin 
		width: 1
		color: Color white;
		line: aRect origin 
		to: (aRect origin x)@(aRect corner y - 2)
		width: 1
		color: Color white.
