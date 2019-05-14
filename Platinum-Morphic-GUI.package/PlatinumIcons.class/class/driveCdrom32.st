as yet unclassified
driveCdrom32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self driveCdrom32Source base64Decoded))