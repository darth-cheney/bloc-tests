drawing
drawOnSpartaCanvas: aCanvas
	"Draw the form on the canvas"
	form ifNotNil: [ 
		aCanvas fill
			paint: (aCanvas bitmap fromForm: form);
			path: (self boundsInLocal);
			draw ].