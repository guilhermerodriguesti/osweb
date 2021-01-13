#!/bin/bash
git init
git add --all
git commit -m "Add docker build"
git remote add origin https://github.com/guilhermerodriguesti/osweb.git
git push -u origin master