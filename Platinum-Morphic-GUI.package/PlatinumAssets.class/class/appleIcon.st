as yet unclassified
appleIcon
	^ PNGReadWriter formFromStream: (ReadStream on: self appleIconBytes base64Decoded).