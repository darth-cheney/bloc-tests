as yet unclassified
driveHarddisk32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self driveHarddisk32Source base64Decoded))