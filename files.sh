# common file operations

fn file_exists(f) {
	-test -e $f

	return $status
}

fn is_dir(f) {
	-test -d $f

	return $status
}
