as yet unclassified
charcoalFontSized: aPointSize
	^ FreeTypeFont fromBytes: (self charcoalBytes base64Decoded) pointSize: aPointSize.
	