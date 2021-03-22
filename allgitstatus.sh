#!/bin/sh

usage() {
    echo "Usage: ${0##*/} search_root_dir"
    echo
    echo "Variables:"
    echo '  GIT_STATUS_PARAMETERS: Pass to command line parameters for "git status" command'
}

if [ $# = 1 ] && [ -d "${1}" ]; then
    search_root_dir=$(echo "${1}" | sed -e "s#/*\$##g")
    repositories=$(find "$search_root_dir" -type d -name ".git" | sed -e "s#/\.git\$##g")

    for i in $repositories
    do
	echo "################################################################"
	echo "$i"
	echo "################################################################"
	if [ -z "$GIT_STATUS_PARAMETERS" ]; then
	    (cd "$i" && git status)
	else
	    (cd "$i" && git status "$GIT_STATUS_PARAMETERS")
	fi
	echo "################################################################"
	echo
	echo
    done
else
    usage
fi
