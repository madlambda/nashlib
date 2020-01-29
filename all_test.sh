#!/usr/bin/env nash

var testfiles <= ls | grep ".*_test\\.sh$" | grep -v "^all_test.sh$"
testfiles <= split($testfiles, "\n")

# run all test files
for f in $testfiles {
	nash $f
}

echo "All tests pass!"
