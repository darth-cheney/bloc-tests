as yet unclassified
mediaOpticalCdR32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalCdR32Source base64Decoded))