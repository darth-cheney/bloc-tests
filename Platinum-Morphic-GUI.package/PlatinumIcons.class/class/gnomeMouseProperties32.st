as yet unclassified
gnomeMouseProperties32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeMouseProperties32Source base64Decoded))