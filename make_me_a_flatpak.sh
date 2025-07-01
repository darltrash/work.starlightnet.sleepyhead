#!/bin/bash

BUILDER=flatpak-builder
if ! command -v flatpak-builder &> /dev/null
then
    BUILDER="flatpak run org.flatpak.Builder"
fi

$BUILDER --user --force-clean --repo export build-dir work.starlightnet.sleepyhead.yml
flatpak build-bundle export work.starlightnet.sleepyhead.flatpak work.starlightnet.sleepyhead
