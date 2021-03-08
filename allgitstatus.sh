#!/bin/sh

usage() {
    echo "Usage: ${0##*/} search_root_dir"
}

if [ $# = 1 ]; then
    search_root_dir=$(echo "${1}" | sed -e "s#/*\$##g")
    repositories=$(find "$search_root_dir" -type d -name ".git" | sed -e "s#/\.git\$##g")

    for i in $repositories
    do
	echo "################################################################"
	echo "$i"
	echo "################################################################"
	(cd "$i" && git status)
	echo "################################################################"
	echo
	echo
    done
else
    usage
fi
