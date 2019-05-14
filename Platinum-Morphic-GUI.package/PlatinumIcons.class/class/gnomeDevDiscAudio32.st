as yet unclassified
gnomeDevDiscAudio32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscAudio32Source base64Decoded))