drawing
drawOnlyWhiteSlatsOnCanvas: aCanvas
	| col |
	col := Color r: 119 g: 119 b: 119 range: 255.
	aCanvas fill
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: col;
		path: (((self boundsInLocal left + 1)@0) corner: (self boundsInLocal corner));
		draw.
	
	0 to: 5 do: [ :num |
		| y line |
		y := (num * 2) + 0.5.
		line := aCanvas shape line: (0@y) to: ((self width - 1)@y).
		aCanvas stroke
			drawOptions: (aCanvas drawOptions antialiasNone);
			paint: Color white;
			path: line;
			draw ].