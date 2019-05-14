as yet unclassified
gtkCdrom32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gtkCdrom32Source base64Decoded))