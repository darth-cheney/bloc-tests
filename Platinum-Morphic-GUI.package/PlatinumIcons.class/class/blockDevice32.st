as yet unclassified
blockDevice32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self blockDevice32Source base64Decoded))