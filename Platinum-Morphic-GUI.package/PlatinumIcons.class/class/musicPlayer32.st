as yet unclassified
musicPlayer32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self musicPlayer32Source base64Decoded))