# common file operations

fn file_exists(f) {
	-test -e $f

	return $status
}

fn is_dir(f) {
	-test -d $f

	return $status
}

fn getfiles(path) {
	files <= ls $path
	flist <= split($files, "\n")

	return $flist
}

fn filesgrep(path, pat) {
	files = ()

	for f in getfiles($path) {
		if grep($f, $pat) == "0" {
			files <= append($files, $f)
		}
	}

	return $files
}
