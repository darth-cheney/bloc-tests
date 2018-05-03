as yet unclassified
drawInnerGreyOn: aCanvas
	| col path1 |
	col := Color r: 136 g: 136 b: 136 range: 255.
	path1 := aCanvas path
		moveTo: (11@3);
		lineTo: (11@11);
		moveTo: (11@11);
		lineTo:(3@11);
		build.
		
	aCanvas stroke
		paint: col;
		path: path1;
		draw.