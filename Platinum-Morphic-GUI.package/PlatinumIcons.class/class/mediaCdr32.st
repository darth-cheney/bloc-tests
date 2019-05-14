as yet unclassified
mediaCdr32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaCdr32Source base64Decoded))