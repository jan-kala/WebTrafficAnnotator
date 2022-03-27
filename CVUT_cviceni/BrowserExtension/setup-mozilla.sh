#!/bin/bash

# Script that copies Native Messaging manifest into the correct directory
# Currently supports Linux and OSX
#

# working location will be from the script
PREV_PWD=$(pwd)
cd "$(dirname "$0")"

MANIFEST_LOCATION=NativeMessagingHostsManifest/com.kala.annotator.json
USER=$(whoami)

# Check the user privileges - we need his name (macos)
if [ "$USER" == "root" ]; then 
    echo "Don't run this as sudo! you'll be prompted for sudo password if needed."
    exit 1
fi

# Stage 1 : Copy Manifest into correct place

LINUX_PATH1="/usr/lib/mozilla/native-messaging-hosts/"
LINUX_PATH2="/usr/lib64/mozilla/native-messaging-hosts/"
MACOS_PATH1="/Library/Application Support/Mozilla/NativeMessagingHosts"
MACOS_PATH2="/Users/$USER/Library/Application Support/Mozilla/NativeMessagingHosts"

if [[ "$OSTYPE" == "linux-gnu"* ]] 
then
    # Linux paths
    if [ -d "$LINUX_PATH1" ]; then CORRECT_DIR="$LINUX_PATH1"
    elif [ -d "$LINUX_PATH2" ]; then CORRECT_DIR="$LINUX_PATH2"
    fi
elif [[ "$OSTYPE" == "darwin"* ]] 
then
    # Mac OSX
    if [ -d "$MACOS_PATH1" ]; then CORRECT_DIR="$MACOS_PATH1"
    elif [ -d "$MACOS_PATH2" ]; then CORRECT_DIR="$MACOS_PATH2"
    fi
fi    

sudo cp "$MANIFEST_LOCATION" "$CORRECT_DIR"

# Stage 2: Prepare folders and files
sudo mkdir -p /usr/local/bin/WebAnnotator
mkdir -p /tmp/WebAnnotator

# Stage 2: Copy bin into correct place
RESENDER_BINARY_LOCATION=../Daemons/HTTPDataResender 

sudo cp "$RESENDER_BINARY_LOCATION" /usr/local/bin/WebAnnotator/

# Cleanup
cd "$PREV_PWD"