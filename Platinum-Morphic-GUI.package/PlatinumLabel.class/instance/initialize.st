initialization
initialize
	super initialize.
	string := 'Untitled'.
	fontSize := 9.
	font := (PlatinumAssets charcoalFontSized: fontSize).
	font kerningLeft: 2 right: 2.
	textColor := Color black.
	backgroundColor := Color transparent.
	self height: (TextStyle pointsToPixels: fontSize).