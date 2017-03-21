initialization
initializeWithWidth: aWidth andPosition: aPoint
	"comment stating purpose of message"
	self initialize.
	self size: (aWidth@12).
	self width: aWidth.
	self position: aPoint.		
	self drawWhiteSlats.
	self drawBlackSlats.