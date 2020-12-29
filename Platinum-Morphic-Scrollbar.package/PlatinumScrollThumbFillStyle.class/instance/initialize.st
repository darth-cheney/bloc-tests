initialization
initialize
	super initialize.
	
	"Build the grip form from the class source"
	gripForm := PNGReadWriter formFromStream: (ReadStream on: self class gripSource base64Decoded asByteArray).