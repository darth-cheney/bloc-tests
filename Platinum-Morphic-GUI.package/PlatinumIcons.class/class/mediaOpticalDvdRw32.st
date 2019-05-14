as yet unclassified
mediaOpticalDvdRw32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalDvdRw32Source base64Decoded))