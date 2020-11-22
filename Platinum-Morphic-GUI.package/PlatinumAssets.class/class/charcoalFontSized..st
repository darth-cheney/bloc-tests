as yet unclassified
charcoalFontSized: aPointSize
	(Smalltalk version asLowercase includesSubstring: 'squeak')
		ifTrue: [
			^ (Smalltalk at: #TTCFont) family: 'Charcoal' size: aPointSize ]
		ifFalse: [
			^ (Smalltalk at: #FreeTypeFont) fromBytes: (self charcoalBytes base64Decoded) pointSize: aPointSize. ]
	

	