initialization
initializeButtonHandlers
	self titleBar closeButton
		actionBlock: [ self delete ].
		
	"If ObjectIcon is loaded, the scale button
	will turn the window into an icon by default"
	(Smalltalk includesKey: #ObjectIcon)
		ifTrue: [ 
			self titleBar onScaleDo: [ 
				| icon |
				icon := self asIcon.
				icon onDoubleClick: [ 
					self openInWorld ].
				self titleBar onScaleDo: [ 
					self delete ].
				self delete.
				icon openInWorld ] ]