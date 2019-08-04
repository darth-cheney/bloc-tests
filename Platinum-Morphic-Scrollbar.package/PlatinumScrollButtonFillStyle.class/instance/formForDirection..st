as yet unclassified
formForDirection: aSymbol
	"Get the form for the passed in arrow direction.
	Symbol is one of:
	#down #up #left #right"
	| form |
	(aSymbol == #down) ifTrue: [ 
		form := PNGReadWriter formFromStream: (ReadStream on: self class downArrowSource base64Decoded) ].
	(aSymbol == #up) ifTrue: [ 
		form := PNGReadWriter formFromStream: (ReadStream on: self class upArrowSource base64Decoded) ].
	
	(aSymbol == #right) ifTrue: [ 
		form := PNGReadWriter formFromStream: (ReadStream on: self class rightArrowSource base64Decoded) ].
	
	(aSymbol == #left) ifTrue: [ 
		form := PNGReadWriter formFromStream: (ReadStream on: self class leftArrowSource base64Decoded) ].
	
	^ form