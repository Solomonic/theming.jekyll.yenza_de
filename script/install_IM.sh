#!/usr/bin/env bash
set -ex
wget https://www.imagemagick.org/download/ImageMagick-7.0.10-21.tar.gz
tar -xzvf ImageMagick-7.0.10-21.tar.gz
cd ImageMagick-7.0.10-21 && ./configure --prefix=/usr && make && sudo make install