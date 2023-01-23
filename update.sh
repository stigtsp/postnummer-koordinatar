#!/usr/bin/env bash

function download () {
  path=$1
  wget \
    --recursive \
    --no-clobber \
    --convert-links \
    --domains www.erikbolstad.no -R '*index.html\?*' \
    --no-parent \
      https://www.erikbolstad.no/postnummer-koordinatar/$path/
}

download txt
download kml
download xml
