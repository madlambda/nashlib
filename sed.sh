# sed helpers

fn sed(in, pat) {
	out <= echo -n $in | sed $pat

	return $out
}

fn lstsed(lst, pat) {
	out = ()

	for l in $lst {
		out <= append($out, sed($l, $pat))
	}

	return $out
}
