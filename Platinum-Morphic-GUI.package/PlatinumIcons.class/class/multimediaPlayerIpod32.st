as yet unclassified
multimediaPlayerIpod32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self multimediaPlayerIpod32Source base64Decoded))