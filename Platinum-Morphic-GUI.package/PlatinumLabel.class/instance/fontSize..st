accessing
fontSize: aPointSize
	fontSize := aPointSize.
	self
		font: (PlatinumAssets charcoalFontSized: fontSize); 
		height: (TextStyle pointsToPixels: fontSize).
	