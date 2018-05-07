as yet unclassified
drawInnerBorderOn: aCanvas inRect: aRect
	| rect color path |
	rect := Rectangle point: (aRect origin + 2) point: (aRect corner - 2).
	color := Color r: 170 g: 170 b: 170 range: 255.
	path := aCanvas shape polygon: { 
		(rect left + 2)@(rect top).
		(rect right - 2)@(rect top).
		(rect right)@(rect top + 2).
		(rect right)@(rect bottom - 2).
		(rect right - 2)@(rect bottom).
		(rect left + 2)@(rect bottom).
		(rect left)@(rect bottom - 2).
		(rect left)@(rect top + 2).
		(rect left + 2)@(rect top) }.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: color;
		path: path;
		draw.