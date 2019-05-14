as yet unclassified
mediaOpticalDvdR32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalDvdR32Source base64Decoded))