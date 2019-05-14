as yet unclassified
chardevice32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self chardevice32Source base64Decoded))