# core functions

fn pwd() {
	curdir <= pwd | tr -d "\n"

	return $curdir
}

fn range(lst) {
	sz <= len($lst)

	if $sz == "0" {
		return ()
	}

	last <= -expr $sz - 0
	idxs <= seq 0 $last
	idxs <= split($idxs, "\n")

	return $idxs
}
