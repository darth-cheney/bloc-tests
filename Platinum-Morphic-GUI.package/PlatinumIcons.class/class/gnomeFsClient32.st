as yet unclassified
gnomeFsClient32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeFsClient32Source base64Decoded))