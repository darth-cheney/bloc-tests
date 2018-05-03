drawing
drawOnlyWhiteSlatsOnCanvas: aCanvas
	| col |
	col := Color r: 119 g: 119 b: 119 range: 255.
	aCanvas fill
		paint: col;
		path: (((self boundsInLocal left + 1)@0) corner: (self boundsInLocal corner));
		draw.
	
	0 to: 5 do: [ :num |
		| y |
		y := num * 2.
		aCanvas stroke
			paint: Color white;
			path: (aCanvas path
				moveTo: (0@y);
				lineTo: ((self width -1)@y);
				build);
			draw ].