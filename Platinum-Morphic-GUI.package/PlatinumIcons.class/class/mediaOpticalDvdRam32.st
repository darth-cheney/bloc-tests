as yet unclassified
mediaOpticalDvdRam32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalDvdRam32Source base64Decoded))