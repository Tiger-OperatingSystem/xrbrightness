#!/bin/bash

build_dir=$(mktemp -d)

mv usr/   ${build_dir}
mv DEBIAN ${build_dir}

dpkg-deb -b ${build_dir} .

mv ${build_dir}/* .

mv ./*.deb xrbrightness.deb
