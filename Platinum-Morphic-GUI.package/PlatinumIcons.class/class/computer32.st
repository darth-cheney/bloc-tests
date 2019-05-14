as yet unclassified
computer32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self computer32Source base64Decoded))