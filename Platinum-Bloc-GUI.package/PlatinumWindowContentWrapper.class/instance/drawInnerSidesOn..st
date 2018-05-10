as yet unclassified
drawInnerSidesOn: aCanvas
	| rect |
	rect := Rectangle point: (self boundsInLocal origin + 0.5) point: (self boundsInLocal corner - 0.5).
	"White part"
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color white;
		path: (aCanvas path
			moveTo: (rect right)@(rect top);
			lineTo: rect corner;
			lineTo: (rect left)@(rect bottom);
			build);
		draw.
	
	"Dark part"
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 153 g: 153 b: 153 range: 255);
		path: (aCanvas path
			moveTo: (rect left)@(rect bottom);
			lineTo: rect origin;
			lineTo: (rect right)@(rect top);
			build);
		draw.