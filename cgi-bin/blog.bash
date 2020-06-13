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

blog() {
    echo $SDN $SBN $CRD $SNE
}

[[ "${BASH_SOURCE[0]}" == "${0}" ]] && "${SNE}" "${@}"
