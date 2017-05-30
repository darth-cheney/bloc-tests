drawing
drawOn: arg1
	| tmp1 tmp2 tmp3 tmp5 |
	tmp2 := self bounds corner x.
	tmp1 := self bounds origin x.
	tmp3 := self bounds origin y.
	tmp5 := 0.
	6
		timesRepeat: [ arg1
				line: tmp1 @ (tmp3 + tmp5)
				to: (tmp2 - 2) @ (tmp3 + tmp5)
				color: Color white darker darker.
			tmp5 := tmp5 + 1.
			arg1
				line: (tmp1 + 2) @ (tmp3 + tmp5)
				to: tmp2 @ (tmp3 + tmp5)
				color: Color gray lighter lighter.
			tmp5 := tmp5 + 1 ]