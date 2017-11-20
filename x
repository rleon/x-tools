#!/bin/bash
set -euo pipefail

if [ "$#" -eq 0 ]; then
	echo "Usage: x <command name> [args]"
	exit 1
fi

export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/x-$1 "${@:2}"
