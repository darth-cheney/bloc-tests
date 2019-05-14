as yet unclassified
cdromUnmount32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self cdromUnmount32Source base64Decoded))