accessing
baseColor: aColor
	baseColor := aColor.
	darkHighlightColor := aColor - (Color r: 102 g: 102 b: 102 range: 255).
	darkHighlightColor adjustBrightness: 0.47.
	lightHighlightColor := aColor - (Color r: 51 g: 51 b: 51 range: 255).
	lightHighlightColor adjustBrightness: 0.6.