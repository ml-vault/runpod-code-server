#!/usr/bin/bash 

if [[ -v GITHUB_TOKEN ]]; then
    echo $GITHUB_TOKEN >> _ghtoken.txt
    gh auth login --with-token < _ghtoken.txt
    rm _ghtoken.txt
fi