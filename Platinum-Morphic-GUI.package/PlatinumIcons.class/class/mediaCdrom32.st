as yet unclassified
mediaCdrom32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaCdrom32Source base64Decoded))