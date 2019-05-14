as yet unclassified
scanner32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self scanner32Source base64Decoded))