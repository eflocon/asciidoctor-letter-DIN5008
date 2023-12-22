#!/bin/sh
# Run latest container with asciidoctor-letter
# $1 filename of file which contains the asciidoctor content for the letter
parent_dir=$(realpath -- "$1/..")
filename=$(basename "$1")
docker run -v $parent_dir:/content asciidoctor-letter bash ./generate-letter.sh /content/$filename