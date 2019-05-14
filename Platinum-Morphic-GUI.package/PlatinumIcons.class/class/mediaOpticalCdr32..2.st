as yet unclassified
mediaOpticalCdr32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalCdr32Source base64Decoded))