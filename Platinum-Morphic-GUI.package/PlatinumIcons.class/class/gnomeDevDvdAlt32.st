as yet unclassified
gnomeDevDvdAlt32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDvdAlt32Source base64Decoded))