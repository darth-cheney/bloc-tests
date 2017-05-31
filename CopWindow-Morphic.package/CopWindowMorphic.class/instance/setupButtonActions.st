as yet unclassified
setupButtonActions
	"Sets the click block for
	 each button in the titleBar."
	titleBar closeButton setClickAction: [ self closeWindow ].
	titleBar scaleButton setClickAction: [  self scaleWindow ].
	titleBar collapseButton setClickAction: [  self collapseWindow ].