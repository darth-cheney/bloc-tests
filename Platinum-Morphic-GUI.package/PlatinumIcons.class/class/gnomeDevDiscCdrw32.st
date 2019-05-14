as yet unclassified
gnomeDevDiscCdrw32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscCdrw32Source base64Decoded))