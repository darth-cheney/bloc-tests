as yet unclassified
gnomePhoneManager32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomePhoneManager32Source base64Decoded))