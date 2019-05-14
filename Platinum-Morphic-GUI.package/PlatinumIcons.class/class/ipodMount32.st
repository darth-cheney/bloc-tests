as yet unclassified
ipodMount32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self ipodMount32Source base64Decoded))