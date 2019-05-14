as yet unclassified
mediaJaz32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaJaz32Source base64Decoded))