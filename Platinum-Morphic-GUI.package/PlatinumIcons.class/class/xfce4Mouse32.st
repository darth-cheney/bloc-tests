as yet unclassified
xfce4Mouse32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self xfce4Mouse32Source base64Decoded))