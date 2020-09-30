#!/bin/bash

echo "» Generating static pages..."
rm -fR docs
hugo
echo "» Push updates to GIT..."
git add . && sleep 1
echo "Apa yang diubah kali ini?"
read -r GIT_COMMENT && sleep 1
git commit -am "${GIT_COMMENT}" && sleep 1
git push -u origin master && sleep 1
