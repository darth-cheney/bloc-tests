as yet unclassified
gnomeDevCdrom32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevCdrom32Source base64Decoded))