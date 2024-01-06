#!/bin/sh

name="$1"
base="${name%%.*}"
workdir="${name%/*}/"
[ -f "$name".pdf ] || soffice --headless --convert-to pdf --outdir "$workdir" "$1"
pdfseparate "$base.pdf" "$workdir"%d.pdf
