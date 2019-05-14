as yet unclassified
cameraUnmount32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self cameraUnmount32Source base64Decoded))