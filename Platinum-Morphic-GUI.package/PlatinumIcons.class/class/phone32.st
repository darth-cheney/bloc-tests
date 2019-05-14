as yet unclassified
phone32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self phone32Source base64Decoded))