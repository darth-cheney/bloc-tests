as yet unclassified
gnomeDevMouseBall32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeDevMouseBall32Source base64Decoded))