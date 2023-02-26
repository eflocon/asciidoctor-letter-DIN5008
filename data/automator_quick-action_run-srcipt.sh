TARGET_DIR=`dirname $1`
TARGET_FILE=`basename $1`
SCRIPT_NAME="generate-letter.sh"
#echo "$TARGET_DIR"
#echo "$TARGET_FILE"
cd $TARGET_DIR
#pwd
cd ../data
pwd
#sh generate-letter.sh ../content/2023-02-25-example.adoc
sh $SCRIPT_NAME ../content/$TARGET_FILE