as yet unclassified
drawPlainButtonOn: aCanvas
	"Draws all the necessary outlines and colors for an un-pressed button"
	| fillColor|
	fillColor := Color r: 221 g: 221 b: 221 range: 255.
	self
		drawButtonBorderAndFillOn: aCanvas withFillColor: fillColor;
		drawFirstInnerShadowOn: aCanvas;
		drawSecondInnerShadowOn: aCanvas;
		drawHighlightsOn: aCanvas.
		