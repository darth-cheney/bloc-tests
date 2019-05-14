as yet unclassified
mediaDvdrw32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaDvdrw32Source base64Decoded))