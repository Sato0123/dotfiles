#!/bin/bash

mkdir -p ~/.local/share/fonts
cd "$(dirname $0)"
unzip fonts/0xProto/0xproto.zip
cp fonts/**/*.ttf ~/.local/share/fonts/.
fc-cache -fv

echo "シェルを再起動してください"
