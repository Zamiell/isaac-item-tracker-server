#!/bin/bash

set -e # Exit on any errors

# Get the directory of this script:
# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$DIR"

# Copied from: isaac-item-tracker-server.service
JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"  /usr/bin/java -jar "$DIR/target/trackerserver-1.0-SNAPSHOT.jar" server "$DIR/options.yaml"
