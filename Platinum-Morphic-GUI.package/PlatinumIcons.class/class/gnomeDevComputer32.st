as yet unclassified
gnomeDevComputer32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevComputer32Source base64Decoded))