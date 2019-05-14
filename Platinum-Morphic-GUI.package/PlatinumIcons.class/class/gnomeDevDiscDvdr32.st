as yet unclassified
gnomeDevDiscDvdr32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscDvdr32Source base64Decoded))