drawing
drawAllSlatsOnCanvas: aCanvas
	| col |
	col := Color r: 119 g: 119 b: 119 range: 255.
	1 to: 6 do: [ :num |
		| lightY darkY lineLight lineDark |
		lightY := ((num - 1) * 2).
		darkY := lightY - 1. 
		lineLight := aCanvas shape line: (0@lightY) to: ((self width -1)@lightY).
		lineDark := aCanvas shape line: (1@darkY) to: ((self width)@darkY).
		aCanvas stroke
			paint: Color white;
			path: lineLight;
			draw.
		aCanvas stroke
			paint: col;
			path: lineDark;
			draw ].