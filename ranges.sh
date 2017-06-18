fn rangeids(list) {
	var l       <= len($list)
	var last, _    <= expr $l - 1
	var values  <= seq 0 $last
	var listval <= split($values, "\n")

	return $listval
}
