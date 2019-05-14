as yet unclassified
multimediaPlayerAppleIpod32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self multimediaPlayerAppleIpod32Source base64Decoded))