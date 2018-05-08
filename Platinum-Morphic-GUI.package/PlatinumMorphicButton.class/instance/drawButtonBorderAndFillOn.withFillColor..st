as yet unclassified
drawButtonBorderAndFillOn: aCanvas withFillColor: aColor
	"aCanvas
		frameAndFillRoundRect: (self bounds)
		radius: 4
		fillStyle: aColor
		borderWidth: 1
		borderColor: Color black."
	aCanvas
		drawPolygon: (self borderVerticies)
		fillStyle: aColor
		borderWidth: 1
		borderColor: Color black.