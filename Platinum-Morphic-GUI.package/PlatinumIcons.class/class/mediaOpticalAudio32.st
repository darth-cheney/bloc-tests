as yet unclassified
mediaOpticalAudio32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaOpticalAudio32Source base64Decoded))