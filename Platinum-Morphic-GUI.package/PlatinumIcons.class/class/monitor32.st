as yet unclassified
monitor32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self monitor32Source base64Decoded))