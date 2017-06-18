fn grep(content, pat) {
	_, status <= echo $content | -grep $pat >[1=]

	return $status
}
