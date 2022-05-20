#!/bin/bash
PREV_PWD=$(pwd)
cd "$(dirname "$0")"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir $TIMESTAMP && cd $TIMESTAMP

echo "timestamp, source,\"url\",\"data\"" > joined.csv
cat /tmp/WebAnnotator/browser.csv >> ./joined.csv
cat /tmp/WebAnnotator/interface.csv >> ./joined.csv

cp /tmp/WebAnnotator/interface.csv ./
cp /tmp/WebAnnotator/browser.csv ./

cd ..

zip annotator_data.zip -r $TIMESTAMP

rm -rf "$TIMESTAMP"

# Cleanup
cd "$PREV_PWD"