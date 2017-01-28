fn grep(content, pat) {
	echo $content | -grep $pat >[1=]

	return $status
}
