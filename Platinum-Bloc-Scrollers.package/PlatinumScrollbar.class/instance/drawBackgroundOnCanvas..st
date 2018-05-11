as yet unclassified
drawBackgroundOnCanvas: aCanvas
	aCanvas fill
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: self barColor;
		path: self boundsInLocal;
		draw.