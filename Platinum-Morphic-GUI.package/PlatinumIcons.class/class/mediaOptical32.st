as yet unclassified
mediaOptical32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOptical32Source base64Decoded))