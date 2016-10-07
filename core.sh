# core functions

fn pwd() {
	curdir <= pwd | tr -d "\n"

	return $curdir
}
