as yet unclassified
mediaOpticalDvdRom32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalDvdRom32Source base64Decoded))