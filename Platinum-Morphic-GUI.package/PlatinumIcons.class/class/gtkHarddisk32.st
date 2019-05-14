as yet unclassified
gtkHarddisk32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gtkHarddisk32Source base64Decoded))