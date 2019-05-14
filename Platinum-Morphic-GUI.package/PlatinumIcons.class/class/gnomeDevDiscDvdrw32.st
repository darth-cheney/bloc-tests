as yet unclassified
gnomeDevDiscDvdrw32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscDvdrw32Source base64Decoded))