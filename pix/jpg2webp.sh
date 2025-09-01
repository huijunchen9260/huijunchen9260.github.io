#!/bin/sh

for f in "$1"/*; do
	cwebp "$f" -o "${f%.*}".webp
done
