fn rangeids(list) {
	l       <= len($list)
	last    <= -expr $l - 1
	values  <= seq 0 $last
	listval <= split($values, "\n")

	return $listval
}
