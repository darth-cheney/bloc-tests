as yet unclassified
xfce4Keyboard32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self xfce4Keyboard32Source base64Decoded))