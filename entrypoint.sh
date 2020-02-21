#!/bin/sh

set 
set -eu 
set -o pipefail 

echo "Using $INPUT_SITE_SOURCES_PATH"

cd $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

ls -ltr $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

antora --stacktrace $INPUT_ANTORA_PLAYBOOK
