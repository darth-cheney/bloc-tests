as yet unclassified
gnomeDevKeyboard32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevKeyboard32Source base64Decoded))