#!/usr/bin/env bash

set -euET -o pipefail

sed -ne '1,/^ *<\/ul>/p' "$1" | sed -e '/^ *<\/ul>/d'
sed -ne '/^ *<ul>/,/^ *<\/ul>/p' "$2" | sed -e '/^ *<ul>/d; /^ *<\/ul>/d'
sed -ne '/^ *<\/ul>/,$p' "$1"
