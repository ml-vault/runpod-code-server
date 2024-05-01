mkdir -p /workspace/.vscode/extensions
mkdir -p /workspace/.vscode/user
code-server --auth none --bind-addr 0.0.0.0:25431 --extensions-dir /workspace/.vscode/extensions --user-data-dir /workspace/.vscode/user
