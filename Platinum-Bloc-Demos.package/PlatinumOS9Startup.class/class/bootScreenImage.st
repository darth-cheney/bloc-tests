as yet unclassified
bootScreenImage
	^ PNGReadWriter formFromStream: (ReadStream on: self bootScreenImgSource base64Decoded).