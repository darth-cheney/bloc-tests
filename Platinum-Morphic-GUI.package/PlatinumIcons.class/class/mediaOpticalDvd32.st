as yet unclassified
mediaOpticalDvd32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalDvd32Source base64Decoded))