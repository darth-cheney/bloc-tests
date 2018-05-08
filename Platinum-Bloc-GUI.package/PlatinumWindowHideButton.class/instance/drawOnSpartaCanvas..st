drawing
drawOnSpartaCanvas: aCanvas
	| path |
	super drawOnSpartaCanvas: aCanvas.
	path := aCanvas path
		moveTo: (1@5);
		lineTo: (12@5);
		moveTo: (1@7);
		lineTo: (12@7);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color black;
		path: path;
		draw.

	