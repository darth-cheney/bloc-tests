as yet unclassified
yastMouse32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self yastMouse32Source base64Decoded))