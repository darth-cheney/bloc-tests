as yet unclassified
multimediaPlayer32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self multimediaPlayer32Source base64Decoded))