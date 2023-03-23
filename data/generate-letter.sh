#!/bin/sh

# https://learnxinyminutes.com/docs/bash/
# https://devhints.io/bash
# run script: 
# sh generate-letter.sh ../content/2023-02-25-example.adoc

#name="John"
#echo "Hello $name!"

INPUT_FILE_PATH=$1
CONTENT_FILE_NAME="letter-content-deleteme.adoc"
WORKING_FILE_NAME="letter-main.adoc"
OUTPUT_FILE_NAME=${WORKING_FILE_NAME/.adoc/.pdf}

# Get dir and filename
TARGET_DIR=`dirname $INPUT_FILE_PATH`
TARGET_FILE=`basename $INPUT_FILE_PATH`

# Replace extensions
TARGET_FILE=${TARGET_FILE/.adoc/.pdf}
TARGET_PATH="$TARGET_DIR/$TARGET_FILE"

# !!!!! Remove existing files !!!!!
rm -f $CONTENT_FILE_NAME

# copy
echo "\"cp $INPUT_FILE_PATH $CONTENT_FILE_NAME\""
cp $INPUT_FILE_PATH $CONTENT_FILE_NAME

# asciidoctor
echo "\"asciidoctor-pdf $WORKING_FILE_NAME\""
asciidoctor-pdf $WORKING_FILE_NAME
wait
echo "set target-path: \"$TARGET_PATH\""
echo "\"cp $OUTPUT_FILE_NAME $TARGET_PATH\""
cp $OUTPUT_FILE_NAME $TARGET_PATH

# !!!!! Remove existing files !!!!!
echo "\"rm $OUTPUT_FILE_NAME\""
rm $OUTPUT_FILE_NAME
