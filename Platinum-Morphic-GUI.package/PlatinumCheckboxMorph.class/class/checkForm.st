as yet unclassified
checkForm
	^ PNGReadWriter formFromStream: (ReadStream on: self checkFormSource base64Decoded)