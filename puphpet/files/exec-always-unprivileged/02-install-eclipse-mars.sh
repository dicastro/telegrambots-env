#!/bin/bash

curl --range 0-157286400 -o ~/Downloads/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz.part1 http://eclipse.mirror.triple-it.nl/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
curl --range 157286401-314572800 -o ~/Downloads/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz.part2 http://eclipse.mirror.triple-it.nl/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz

cat ~/Downloads/*.part* > ~/Downloads/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz

tar xvf ~/Downloads/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz

rm -Rf ~/Downloads/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz*

mkdir ~/workspaces
mkdir ~/repos

ln -s ~/eclipse/eclipse ~/Desktop/eclipse