# common file operations

fn file_exists(f) {
	var _, status <= test -e $f

	return $status
}

fn is_dir(f) {
	var _, status <= test -d $f

	return $status
}

fn getfiles(path) {
	var files <= ls $path
	var flist <= split($files, "\n")

	return $flist
}

fn filesgrep(path, pat) {
	var files = ()

	for f in getfiles($path) {
		if grep($f, $pat) == "0" {
			files <= append($files, $f)
		}
	}

	return $files
}
