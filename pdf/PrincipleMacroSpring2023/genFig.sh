#!/bin/sh

name="$1"
base="${name%%.*}"
soffice --headless --convert-to pdf "$1"
pdfseparate "$base.pdf" %d.pdf
