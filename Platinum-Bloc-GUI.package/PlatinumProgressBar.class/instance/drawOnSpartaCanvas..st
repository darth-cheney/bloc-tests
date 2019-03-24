drawing
drawOnSpartaCanvas: aCanvas
	| path path2 |
	" Top Right Accent "
	path := aCanvas path
		moveTo: (0.5)@(self boundsInLocal bottom - 1.5);
		lineTo: (0.5)@(0.5);
		lineTo: (self boundsInLocal right - 1.5)@(0.5);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 170 g: 170 b: 170 range: 255);
		path: path;
		draw.
	"Bottom left accent"
	path2 := aCanvas path
		moveTo: (1.5)@(self boundsInLocal bottom - 0.5);
		lineTo: (self boundsInLocal right - 0.5)@(self boundsInLocal bottom - 0.5);
		lineTo: (self boundsInLocal right - 0.5)@(0.5);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color white;
		path: path2;
		draw.
	super drawOnSpartaCanvas: aCanvas.