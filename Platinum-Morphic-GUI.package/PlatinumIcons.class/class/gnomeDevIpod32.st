as yet unclassified
gnomeDevIpod32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevIpod32Source base64Decoded))