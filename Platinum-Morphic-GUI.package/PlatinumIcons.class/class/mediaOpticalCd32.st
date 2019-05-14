as yet unclassified
mediaOpticalCd32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalCd32Source base64Decoded))