as yet unclassified
drawInnerHighlightOn: aCanvas
	"Draws the white inner highlight in the uppper left corner area"
	| path rect |
	rect := Rectangle point: (self boundsInLocal origin + 0.5) point: (self boundsInLocal corner - 0.5).
	path := aCanvas path
		moveTo: (rect left + 2)@(rect bottom - 2);
		lineTo: (rect left + 2)@(rect top + 2);
		lineTo: (rect right - 2)@(rect top + 2);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color white;
		path: path;
		draw.
	