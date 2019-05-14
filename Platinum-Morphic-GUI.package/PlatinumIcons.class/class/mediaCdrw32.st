as yet unclassified
mediaCdrw32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaCdrw32Source base64Decoded))