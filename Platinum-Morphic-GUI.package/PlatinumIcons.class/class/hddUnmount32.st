as yet unclassified
hddUnmount32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self hddUnmount32Source base64Decoded))