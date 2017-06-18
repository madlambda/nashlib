# sed helpers

fn sed(in, pat) {
	var out <= echo -n $in | sed $pat

	return $out
}

fn lstsed(lst, pat) {
	var out = ()

	for l in $lst {
		out <= append($out, sed($l, $pat))
	}

	return $out
}
