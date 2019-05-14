as yet unclassified
gnomeDevCdromAudio32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevCdromAudio32Source base64Decoded))