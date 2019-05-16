drawing
frameRectangle: aRect on: aCanvas
	| innerRect |
	"Shadow"
	aCanvas
		line: (aRect corner x - 1)@(aRect origin y + 2)
		to: aRect corner - 1
		width: 1
		color: self shadowColor;
		line: aRect corner - 1
		to: (aRect origin x + 3)@(aRect corner y - 1)
		width: 1
		color: self shadowColor.
		
	"Actual border"
	innerRect := aRect insetBy: 1.
	aCanvas
		frameRectangle: innerRect
		color: self color.