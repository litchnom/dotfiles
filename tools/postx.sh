#!/bin/bash

image_url="https://i.imgur.com/HXbT3qO.png"
path="$HOME/default.png"

# set a default background
curl "$image_url" > "$path"
wal -i "$path"
