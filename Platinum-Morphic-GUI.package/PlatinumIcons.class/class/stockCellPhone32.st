as yet unclassified
stockCellPhone32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self stockCellPhone32Source base64Decoded))