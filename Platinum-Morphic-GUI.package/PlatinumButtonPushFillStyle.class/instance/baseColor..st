accessing
baseColor: aColor
	| mixOne mixTwo |
	baseColor := aColor.
	mixOne := (Color r: 34 g: 34 b: 24 range: 255).
	mixTwo := (Color r: 17 g: 17 b: 17 range: 255).
	(aColor brightness = 1.0)
		ifTrue: [ aColor adjustBrightness: 0.4 ].
	firstDarkColor := aColor - mixOne.
	firstDarkColor adjustBrightness: 0.26.
	secondDarkColor := aColor - mixTwo.
	secondDarkColor adjustBrightness: 0.33.
	firstLightColor := aColor + mixOne.
	firstLightColor adjustBrightness: 0.53.
	secondLightColor := aColor + mixTwo.
	secondLightColor adjustBrightness: 0.46.
	