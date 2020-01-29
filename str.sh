# Join concatenates the elements of the list `lst` into a new string
# with values separated by `sep`. `Lst` must contains only string
# values.
# This function is the bastard brother of builtin `split`.
fn join(lst, sep) {
	var sz      <= len($lst)
	var last, _ <= expr $sz "-" "1"
	var indices <= seq 0 $last
	indices <= split($indices, "\n")

	var str     = ""

	for i in $indices {
		if $i != $last {
			str = $str+$lst[$i]+$sep
		} else {
			str = $str+$lst[$i]
		}
	}

	return $str
}
