examples
exampleBasic
	"Open a plain empty frame in a space"
	| space win |
	space := BlSpace new extent: 500@400.
	win := self new.
	win size: 300@300.
	win relocate: 100@50.
	space root addChild: win.
	space show.