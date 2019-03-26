as yet unclassified
drawUpperHiliteRect: aRect on: aCanvas
	"Draw the platinum button upper white
	highlighting"
	aCanvas
		line: (aRect origin x + 1)@(aRect origin y + 1)
		to:  (aRect corner x - 1)@(aRect origin y + 1)
		width: 1
		color: Color white;
		line: (aRect origin x + 1)@(aRect origin y + 1)
		to: (aRect origin x + 1)@(aRect corner y - 1)
		width: 1
		color: Color white;
		line: (aRect origin x + 1)@(aRect origin y + 1)
		to: (aRect origin x + 2)@(aRect origin y + 2)
		width: 1
		color: Color white.
	