as yet unclassified
mediaOpticalCdRw32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalCdRw32Source base64Decoded))