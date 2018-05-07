as yet unclassified
drawOuterBorderOn: aCanvas inRect: rect
	| vertices path fillColor |
	fillColor := Color r: 221 g: 221 b: 221 range: 255.
	vertices := { 
		(rect left + 3)@(rect top).
		(rect right - 3)@(rect top).
		(rect right)@(rect top + 3).
		(rect right)@(rect bottom - 3).
		(rect right - 3)@(rect bottom).
		(rect left + 3)@(rect bottom).
		(rect left)@(rect bottom - 3).
		(rect left)@(rect top + 3).
		(rect left + 3)@(rect top) }.
	path := aCanvas shape polygon: vertices.
	aCanvas fill
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: fillColor;
		path: path;
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color black;
		path: path;
		draw.