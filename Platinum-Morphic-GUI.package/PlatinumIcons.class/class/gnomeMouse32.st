as yet unclassified
gnomeMouse32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeMouse32Source base64Decoded))