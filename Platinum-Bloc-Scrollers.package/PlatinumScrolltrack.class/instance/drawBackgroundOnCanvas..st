as yet unclassified
drawBackgroundOnCanvas: aCanvas
	aCanvas fill
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (Color r: 170 g: 170 b: 170 range: 255);
		path: self boundsInLocal;
		draw.