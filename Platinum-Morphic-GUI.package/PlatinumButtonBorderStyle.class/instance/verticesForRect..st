as yet unclassified
verticesForRect: aRect
	"Respond with all of the vertices of the
	polygon that creates the button border"
	^ { 
		(aRect origin x + 2)@(aRect origin y).
		(aRect origin x)@(aRect origin y + 2).
		(aRect origin x)@(aRect corner y - 3).
		(aRect origin x + 2)@(aRect corner y - 1).
		(aRect corner x - 3)@(aRect corner y - 1).
		(aRect corner x - 1)@(aRect corner y - 3).
		(aRect corner x - 1)@(aRect origin y + 2).
		(aRect corner x - 3)@(aRect origin y).
		(aRect origin x + 2)@(aRect origin y). 
		 }.