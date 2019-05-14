as yet unclassified
inputMouse32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self inputMouse32Source base64Decoded))