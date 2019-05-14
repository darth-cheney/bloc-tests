as yet unclassified
mediaFloppy32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaFloppy32Source base64Decoded))