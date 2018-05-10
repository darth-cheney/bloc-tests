drawing
drawOnSpartaCanvas: aCanvas
	| rect |
	rect := Rectangle point: (self boundsInLocal origin + 0.5) point: (self boundsInLocal corner - 0.5).
	"Outer black border"
	aCanvas stroke
		paint: Color black;
		path: rect;
		draw.
	rect := Rectangle point: (rect origin + 1) point: (rect corner - 1).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color white;
		path: (aCanvas path
			moveTo: (rect left)@(rect bottom);
			lineTo: rect origin;
			lineTo: (rect right)@(rect top);
			build);
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 153 g: 153 b: 153 range: 255);
		path: (aCanvas path
			moveTo: (rect right)@(rect top);
			lineTo: rect corner;
			lineTo: (rect left)@(rect bottom);
			build);
		draw.
	rect := Rectangle point: (rect origin + 1) point: (rect corner - 1).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 204 g: 204 b: 204 range: 255);
		path: rect;
		draw.
	rect := Rectangle point: (rect origin + 1) point: (rect corner - 1).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 204 g: 204 b: 204 range: 255);
		path: rect;
		draw.