as yet unclassified
drawPressedButtonOn: aCanvas
	"Draw the fill and highlights for a pressed button"
	| fillColor |
	fillColor := Color r: 102 g: 102 b: 102 range: 255.
	self
		drawButtonBorderAndFillOn: aCanvas withFillColor: fillColor;
		drawFirstInnerShadowOn: aCanvas;
		drawSecondInnerShadowOn: aCanvas;
		drawPressedHighlightsOn: aCanvas.