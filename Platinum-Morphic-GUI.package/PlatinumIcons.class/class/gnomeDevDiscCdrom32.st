as yet unclassified
gnomeDevDiscCdrom32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscCdrom32Source base64Decoded))