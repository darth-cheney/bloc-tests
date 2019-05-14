as yet unclassified
inputKeyboard32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self inputKeyboard32Source base64Decoded))