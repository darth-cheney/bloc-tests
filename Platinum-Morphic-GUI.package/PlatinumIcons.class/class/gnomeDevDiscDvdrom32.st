as yet unclassified
gnomeDevDiscDvdrom32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscDvdrom32Source base64Decoded))