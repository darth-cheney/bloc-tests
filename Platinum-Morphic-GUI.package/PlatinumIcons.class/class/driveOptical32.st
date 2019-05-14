as yet unclassified
driveOptical32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self driveOptical32Source base64Decoded))