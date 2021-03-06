#!/usr/bin/env nash

# testing forr str.sh

import ./str

fn testjoin(expected, lst, sep) {
	var got <= join($lst, $sep)

	if $got != $expected {
		printf "Failed to join: '%s' != '%s'" $got $expected

		return "1"
	}

	return "0"
}

# testJoin returns 0 in case of tests pass and 1 otherwise
fn TestJoin() {
	var tests = (
		(
			"scratching my itches"
			(scratching my itches)
			" "
		)
		(
			"plan9/from/outer/space"
			(plan9 from outer space)
			"/"
		)
		(
			"writing tests in shellscript we are making history"
			(writing tests in shellscript we are making history)
			" "
		)
		(
			"we are gangsters"
			(we gangsters)
			" are "
		)
	)

	for test in $tests {
		var st <= testjoin($test[0], $test[1], $test[2])

		if $st != "0" {
			return $st
		}
	}

	return "0"
}

exit(TestJoin())
