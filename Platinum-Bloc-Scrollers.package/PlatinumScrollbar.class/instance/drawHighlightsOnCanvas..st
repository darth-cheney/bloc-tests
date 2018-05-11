as yet unclassified
drawHighlightsOnCanvas: aCanvas
	| rect |
	rect := Rectangle point: (self boundsInLocal origin + 0.5) point: (self boundsInLocal corner - 0.5).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: self lightHighlightColor;
		path: (aCanvas path
			moveTo: (rect left)@(rect bottom);
			lineTo: rect origin;
			lineTo: (rect right)@(rect top);
			build);
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: self darkHighlightColor;
		path: (aCanvas path
			moveTo: (rect right)@(rect top);
			lineTo: rect corner;
			lineTo: (rect left)@(rect bottom);
			build);
		draw.