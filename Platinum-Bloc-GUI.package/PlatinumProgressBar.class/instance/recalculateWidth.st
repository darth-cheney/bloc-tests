as yet unclassified
recalculateWidth
	"Take the percentage (current weight / 100)
	and apply it to the maximum possible width"
	| max |
	max := self width - 4.
	self bar width: ((weight / 100) * max) floor.