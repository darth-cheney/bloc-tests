as yet unclassified
gnomeDevDvd32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDvd32Source base64Decoded))