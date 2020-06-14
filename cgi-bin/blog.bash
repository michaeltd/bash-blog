#!/usr/bin/env bash

# Unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\t\n'

#shellcheck disable=SC2155
readonly SDN="$(dirname "$(realpath "${BASH_SOURCE[0]}")")" \
	 SBN="$(basename "$(realpath "${BASH_SOURCE[0]}")")" \
	 CRD="$(pwd -P)"
readonly SNE="${SBN%.*}"

create() {
    printf "\n"
}

retrieve() {
    printf "\n"
}

update() {
    printf "\n"
}

delete() {
    printf "\n"
}

wordcnt() {
    echo $SDN $SBN $CRD $SNE
}

tagcnt() {
    echo $SDN $SBN $CRD $SNE
}

blog() {
    printf "Content-Type: text/html; charset=utf-8\n\n"
    printf "<html lang='en'><head><title>Hello World</title></head>"
    printf "%s\n" "<body><h1>Hello World</h1>"
    printf "<pre>%s</pre>\n" "$(env)"
    printf "<pre>%s</pre>\n" "$(echo -e "Script Dir Name: $SDN\nScript Base Name: $SBN\nCurrent Dir: $CRD\nScript No Extension: $SNE\n")"
    printf "%s\n" "</body></html>"
}

[[ "${BASH_SOURCE[0]}" == "${0}" ]] && "${SNE}" "${@}"
