# core functions

fn pwd() {
	var curdir <= pwd

	return $curdir
}

fn range(lst) {
	var sz <= len($lst)

	if $sz == "0" {
		return ()
	}

	var last, _ <= expr $sz - 1
	var idxs <= seq 0 $last
	idxs <= split($idxs, "\n")

	return $idxs
}
