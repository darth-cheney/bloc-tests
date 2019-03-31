drawing
frameRectangle: aRect on: aCanvas
	aCanvas
		frameRectangle: aRect
		color: Color black;
		
		frameRectangle: (aRect insetBy: 1)
		color: Color white;
		
		frameRectangle: (aRect insetBy: 2)
		width: 2
		color: (Color r: 204 g: 204 b: 204 range: 255).