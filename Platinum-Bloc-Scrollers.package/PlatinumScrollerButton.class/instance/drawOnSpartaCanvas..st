drawing
drawOnSpartaCanvas: aCanvas
	| darkColor rect |
	darkColor := Color r: 187 g: 187 b: 187 range: 255.
	rect := Rectangle point: (self boundsInLocal origin) point: (self boundsInLocal corner - 0.5).
	aCanvas fill
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: self backgroundColor;
		path: rect;
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color black;
		path: rect;
		draw.
	rect := Rectangle point: (rect origin + 1) point: (rect corner - 1).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: darkColor;
		path: (aCanvas path
			moveTo: (rect left)@(rect bottom);
			lineTo: rect corner;
			lineTo: (rect right)@(rect top);
			build);
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color white;
		path: (aCanvas path
			moveTo: (rect right)@(rect top);
			lineTo: rect origin;
			lineTo: (rect left)@(rect bottom);
			build);
		draw.
	self drawArrowOnCanvas: aCanvas.