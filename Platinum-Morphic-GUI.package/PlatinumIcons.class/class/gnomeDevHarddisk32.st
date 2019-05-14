as yet unclassified
gnomeDevHarddisk32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevHarddisk32Source base64Decoded))