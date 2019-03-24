as yet unclassified
exampleBootUp
	| img progressBar space |
	img := self bootScreenImage.
	space := BlSpace new extent: img extent.
	space root background: img.
	progressBar := PlatinumProgressBar new width: 150.
	space addChild: progressBar.
	progressBar relocate: 135@288.
	space show.
	
	[ [ progressBar weight < 100 ] whileTrue: [ 
		(Delay forMilliseconds: 50) wait.
		progressBar weight: progressBar weight + 2 ] ] forkAt: 80 named: #os9Progress.