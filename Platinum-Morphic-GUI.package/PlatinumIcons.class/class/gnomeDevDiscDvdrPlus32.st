as yet unclassified
gnomeDevDiscDvdrPlus32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevDiscDvdrPlus32Source base64Decoded))