as yet unclassified
display32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self display32Source base64Decoded))