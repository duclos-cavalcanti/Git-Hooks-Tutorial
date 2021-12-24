#!/bin/sh

if git rev-parse --verify HEAD >/dev/null 2>&1
then
	# New committs
	echo "pre-commit: About to create a new commit!"
	against=HEAD
else
	# Initial commit: diff against an empty tree object
	echo "pre-commit: About to create the first commit!"
	against=$(git hash-object -t tree /dev/null)
fi

# If you want to allow non-ASCII filenames set this variable to true.
allownonascii=$(git config --type=bool hooks.allownonascii)

# Redirect output to stderr.
exec 1>&2

if [ "$allownonascii" != "true" ] &&
	 test $(git diff --cached --name-only --diff-filter=A -z $against |
	 LC_ALL=C tr -d '[ -~]\0' | wc -c) != 0
then
  echo "pre-comit: Attempt to add a non-ASCII file name!"
	exit 1
fi

if ! git diff-index --check --cached $against
then
  echo "pre-commit: Aborting commit due to whitespace errors!"
  exit 1
else
  echo "pre-commit: No whitespace errors :)"
  exit 0
fi
