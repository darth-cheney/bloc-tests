as yet unclassified
system32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self system32Source base64Decoded))