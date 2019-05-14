as yet unclassified
camera32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self camera32Source base64Decoded))