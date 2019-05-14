as yet unclassified
gnomeDevDiscCdr32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscCdr32Source base64Decoded))