as yet unclassified
driveHarddiskScsi32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self driveHarddiskScsi32Source base64Decoded))