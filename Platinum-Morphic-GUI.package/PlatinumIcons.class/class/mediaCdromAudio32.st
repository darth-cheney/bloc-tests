as yet unclassified
mediaCdromAudio32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self mediaCdromAudio32Source base64Decoded))