as yet unclassified
gnomeDevMouseOptical32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevMouseOptical32Source base64Decoded))