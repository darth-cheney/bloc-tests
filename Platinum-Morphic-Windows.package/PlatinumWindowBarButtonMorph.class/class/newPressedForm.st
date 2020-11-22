instance creation
newPressedForm
	"Respond with a Form for the button that is
	 decoded from the Base64 representation stored in #formSource"
	^ PNGReadWriter formFromStream: (self pressedFormSource base64Decoded asByteArray readStream).