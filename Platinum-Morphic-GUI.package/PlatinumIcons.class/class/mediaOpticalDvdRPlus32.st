as yet unclassified
mediaOpticalDvdRPlus32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalDvdRPlus32Source base64Decoded))