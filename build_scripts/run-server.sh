#!/usr/bin/bash 

if [[ -v GITHUB_TOKEN ]]; then
    echo $GITHUB_TOKEN >> _ghtoken.txt
    gh auth login --with-token < _ghtoken.txt
    rm _ghtoken.txt
    gh auth setup-git
fi

mkdir -p /workspace/.vscode/extensions
mkdir -p /workspace/.vscode/user
code serve-web --without-connection-token --host "0.0.0.0" --extensions-dir "/workspace/.vscode/extensions" --user-data-dir "/workspace/.vscode/user"
