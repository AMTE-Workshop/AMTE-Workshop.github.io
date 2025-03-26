#!/usr/bin/env -S bash -e

################################################################################
# Fetch the font from https://fonts.google.com/specimen/Overpass
################################################################################

# Define the font URL and output file
FONT_URL="https://github.com/RedHatOfficial/Overpass/releases/download/3.0.5/overpass-3.0.5.zip"
FONT_NAME="Overpass-Black.ttf"
FONT_DIR="overpass-font"

# Download and extract the font if it doesn't already exist
if [[ ! -f "$FONT_NAME" ]]; then
    echo "Downloading Overpass font..."
    curl -L -o overpass.zip "$FONT_URL"
    echo "Extracting font..."
    unzip -q overpass.zip -d "$FONT_DIR"
    mv "$FONT_DIR/overpass-black.ttf" "$FONT_NAME"
    rm -rf overpass.zip "$FONT_DIR"
    echo "Font downloaded and saved as $FONT_NAME."
else
    echo "Font $FONT_NAME already exists. Skipping download."
fi
################################################################################

magick -background none \
    -density 574 \
    -fill '#377cb8' \
    -font 'Overpass-Black.ttf' \
    label:'AMTE 2025' \
    -unsharp 0x.5 \
    -gravity southeast -splice 30x25 \
    -gravity northwest -splice 30x25 \
    assets/logo.png