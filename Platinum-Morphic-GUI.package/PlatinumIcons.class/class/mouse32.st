as yet unclassified
mouse32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mouse32Source base64Decoded))