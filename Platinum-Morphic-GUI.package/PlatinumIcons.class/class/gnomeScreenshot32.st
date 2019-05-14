as yet unclassified
gnomeScreenshot32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeScreenshot32Source base64Decoded))