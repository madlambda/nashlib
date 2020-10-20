fn grep(content, pat) {
	var _, status <= echo $content | -grep $pat >[1=]

	if $status == "0" {
		return $status
	}

}
