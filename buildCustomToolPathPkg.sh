#!/bin/bash

pkgname="CustomToolPath"
version="1.0"
identifier="com.example.${pkgname}"
location="/private/etc/paths.d/"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "${location}" \
         "${projectfolder}/${pkgname}-${version}.pkg"
