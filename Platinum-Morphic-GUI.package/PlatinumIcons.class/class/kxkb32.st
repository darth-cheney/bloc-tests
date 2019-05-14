as yet unclassified
kxkb32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self kxkb32Source base64Decoded))