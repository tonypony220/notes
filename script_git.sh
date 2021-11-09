#!/bin/bash
cd ~/coding/services
git add .
git commit -m 'auto'
git $1 origin master

cd ~/coding/notes
git add .
git commit -m 'auto'
git $1 origin master

cd ~/coding/asm
git add .
git commit -m 'auto'
git $1 origin master
