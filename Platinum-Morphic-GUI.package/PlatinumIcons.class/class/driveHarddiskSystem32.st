as yet unclassified
driveHarddiskSystem32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self driveHarddiskSystem32Source base64Decoded))