as yet unclassified
gvcTone32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gvcTone32Source base64Decoded))