as yet unclassified
drawInnerShadowsOnCanvas: aCanvas
	| rect |
	rect := Rectangle point: (self boundsInLocal origin) point: (self boundsInLocal extent - 0.5).
	"Inner bevel color 1"
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 204 g: 204 b: 204 range: 255);
		path: (aCanvas path
			moveTo: (rect right)@(rect top);
			lineTo: (rect right)@(rect bottom);
			build);
		draw.
	"Inner bevel color 2"
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 187 g: 187 b: 187 range: 255);
		path: (aCanvas path
			moveTo: (rect right - 1)@(rect top + 1);
			lineTo: (rect right -1)@(rect bottom);
			build);
		draw.
	"Inner bevel color 3"
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 119 g: 119 b: 119 range: 255);
		path: (aCanvas path
			moveTo: (rect right - 1)@(rect top);
			lineTo: rect origin;
			lineTo: (rect left)@(rect bottom);
			build);
		draw.
	"Inner bevel color 3"
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 136 g: 136 b: 136 range: 255);
		path: (aCanvas path
			moveTo: (rect right - 2)@(rect top + 1);
			lineTo: (rect left + 1)@(rect top + 1);
			lineTo: (rect left + 1)@(rect bottom);
			build);
		draw.