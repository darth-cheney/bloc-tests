as yet unclassified
drawOn: aCanvas
	| aRect |
	aRect := self bounds.
	aCanvas
		fillRectangle: aRect
		fillStyle: Color transparent
		borderStyle: self borderStyle.

	"First, fill entire rect with base color"
	aCanvas
		fillRectangle: aRect
		color: self primaryColor;
		
		"Dark outer highlight"
		line: (aRect corner x - 2)@(aRect origin y)
		to: aRect origin 
		width: 1
		color: self darkOuterColor;
		line: aRect origin
		to: (aRect origin x)@(aRect corner y - 1)
		width: 1
		color: self darkOuterColor;
		
		"Dark inner highlight"
		line: (aRect origin x + 1)@(aRect corner y - 1)
		to: (aRect origin x + 1)@(aRect origin y + 1)
		width: 1
		color: self darkInnerColor;
		line: (aRect origin x + 1)@(aRect origin y + 1)
		to: (aRect corner x - 3)@(aRect origin y + 1)
		width: 1
		color: self darkInnerColor;
		
		"Light outer color"
		line: (aRect corner x - 1)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect origin y)
		width: 1
		color: self lightOuterColor;
		
		"Light inner color"
		line: (aRect corner x - 2)@(aRect corner y - 1)
		to: (aRect corner x - 2)@(aRect origin y + 1)
		width: 1
		color: self lightInnerColor.
	