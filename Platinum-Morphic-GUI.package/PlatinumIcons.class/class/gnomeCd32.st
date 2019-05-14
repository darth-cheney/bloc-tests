as yet unclassified
gnomeCd32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeCd32Source base64Decoded))