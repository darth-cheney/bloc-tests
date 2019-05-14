as yet unclassified
gnomeDevFloppy32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevFloppy32Source base64Decoded))