as yet unclassified
cameraPhoto32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self cameraPhoto32Source base64Decoded))