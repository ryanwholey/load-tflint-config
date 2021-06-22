#!/bin/sh

set -ex

if [ -z "$INPUT_TOKEN" ] ; then
  auth=""
else 
  auth="x-access-token:${INPUT_TOKEN}@"
fi

git clone --single-branch --branch "$INPUT_SOURCE_REPO_BRANCH" "https://${auth}github.com/${INPUT_SOURCE_REPO}.git" "${INPUT_CLONE_DIRECTORY_ROOT}/${INPUT_SOURCE_REPO}"
cp "${INPUT_CLONE_DIRECTORY_ROOT}/${INPUT_SOURCE_REPO}/${INPUT_SOURCE_PATH}" $INPUT_DESTINATION_PATH
