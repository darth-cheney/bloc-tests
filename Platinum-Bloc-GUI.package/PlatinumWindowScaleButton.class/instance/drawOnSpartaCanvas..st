drawing
drawOnSpartaCanvas: aCanvas
	| path |
	super drawOnSpartaCanvas: aCanvas.
	path := aCanvas path
		moveTo: (7@1);
		lineTo: (7@7);
		lineTo: (1@7);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color black;
		path: path;
		draw.
	