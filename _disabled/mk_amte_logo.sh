#!/usr/bin/env -S bash -e

magick -background none \
    -density 574 \
    -fill '#377cb8' \
    -font 'Overpass-Black.ttf' \
    label:'AMTE 2025' \
    -unsharp 0x.5 \
    -gravity southeast -splice 30x25 \
    -gravity northwest -splice 30x25 \
    assets/logo.png