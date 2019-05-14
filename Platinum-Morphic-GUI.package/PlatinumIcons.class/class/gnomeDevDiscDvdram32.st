as yet unclassified
gnomeDevDiscDvdram32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscDvdram32Source base64Decoded))