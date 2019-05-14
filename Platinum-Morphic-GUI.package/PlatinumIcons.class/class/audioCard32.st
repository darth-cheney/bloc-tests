as yet unclassified
audioCard32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self audioCard32Source base64Decoded))