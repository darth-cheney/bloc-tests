as yet unclassified
videoDisplay32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self videoDisplay32Source base64Decoded))