as yet unclassified
drawInnerRectsOn: aCanvas
	"Draw the first inner border"
	| rect1 rect2 |
	rect1 := Rectangle
		left: (self boundsInLocal left + 1)
		right: (self boundsInLocal right - 1)
		top: (self boundsInLocal top + 1)
		bottom: (self boundsInLocal bottom - 1).
	rect2 := Rectangle
		left: (self boundsInLocal left + 2)
		right: (self boundsInLocal right - 2)
		top: (self boundsInLocal top + 2)
		bottom: (self boundsInLocal bottom - 2).
	aCanvas fill
		paint: Color white;
		path: rect1;
		draw.
	aCanvas fill
		paint: (Color r: 204 g: 204 b: 204 range: 255);
		path: rect2;
		draw.
		
	