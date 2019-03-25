instance creation
newForm
	"Respond with a Form for the button that is
	 decoded from the Base64 representation stored in #formSource"
	^ PNGReadWriter formFromStream: (self formSource base64Decoded readStream).