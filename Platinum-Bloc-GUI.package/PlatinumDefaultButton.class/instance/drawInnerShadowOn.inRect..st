as yet unclassified
drawInnerShadowOn: aCanvas inRect: rect
	| color path |
	color := Color r: 119 g: 119 b: 119 range: 255.
	path := aCanvas path
		moveTo: (rect right - 1)@(rect top + 3);
		lineTo: (rect right - 1)@(rect bottom - 3);
		lineTo: (rect right - 2)@(rect bottom - 3);
		lineTo: (rect right - 2)@(rect bottom - 2);
		lineTo: (rect right - 3)@(rect bottom - 2);
		lineTo: (rect right - 3)@(rect bottom - 1);
		lineTo: (rect left + 3)@(rect bottom -1);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: color;
		path: path;
		draw.