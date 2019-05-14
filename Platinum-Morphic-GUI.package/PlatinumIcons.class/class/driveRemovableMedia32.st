as yet unclassified
driveRemovableMedia32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self driveRemovableMedia32Source base64Decoded))