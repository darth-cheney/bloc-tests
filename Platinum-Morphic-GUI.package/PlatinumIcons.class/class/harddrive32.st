as yet unclassified
harddrive32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self harddrive32Source base64Decoded))