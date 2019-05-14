as yet unclassified
yastHD32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self yastHD32Source base64Decoded))