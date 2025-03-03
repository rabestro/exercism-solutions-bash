#!/usr/bin/env bash
set -euo pipefail

main () {
  IFS=$' -,_*'
  readonly words="$1"

  for word in $words; do
    acronym+=${word:0:1}
  done

  echo "${acronym^^}"
}

main "$@"