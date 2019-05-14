as yet unclassified
cdwriterUnmount32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self cdwriterUnmount32Source base64Decoded))