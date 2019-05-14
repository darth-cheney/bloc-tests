as yet unclassified
gtkFloppy32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gtkFloppy32Source base64Decoded))