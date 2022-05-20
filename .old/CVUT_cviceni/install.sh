#!/bin/bash

./BrowserExtension/setup-mozilla.sh

ACTIVE_INTERFACE="$(ip addr show | awk '/inet.*brd/{print $NF; exit}')"
sudo ./Daemons/InterfaceMonitor $ACTIVE_INTERFACE > /tmp/WebAnnotator/interface.csv 