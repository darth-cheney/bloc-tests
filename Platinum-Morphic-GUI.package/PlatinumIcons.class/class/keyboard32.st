as yet unclassified
keyboard32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self keyboard32Source base64Decoded))