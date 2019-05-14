as yet unclassified
gnomeComputer32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeComputer32Source base64Decoded))