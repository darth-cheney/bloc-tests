as yet unclassified
systemFloppy32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self systemFloppy32Source base64Decoded))