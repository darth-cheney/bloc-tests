drawing
drawOnSpartaCanvas: aCanvas
	| rect |
	rect := ((0@0) extent: (self boundsInLocal corner - 1)).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color black;
		path: rect;
		draw.
	rect := (rect origin + 1) extent: (rect extent - 2).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color white;
		path: rect;
		draw.
	rect := (rect origin + 1) extent: (rect extent - 2).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 204 g: 204 b: 204 range: 255);
		path: rect;
		draw.
	rect := (rect origin + 1) extent: (rect extent - 2).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 204 g: 204 b: 204 range: 255);
		path: rect;
		draw.
	rect := (rect origin + 1) extent: (rect extent - 2).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 153 g: 153 b: 153 range: 255);
		path: rect;
		draw.
	rect := (rect origin + 1) extent: (rect extent - 2).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color black);
		path: rect;
		draw.