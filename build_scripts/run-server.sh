mkdir -p /workspace/.vscode/extensions
mkdir -p /workspace/.vscode/user
code serve-web --without-connection-token --host "0.0.0.0" --extensions-dir "/workspace/.vscode/extensions" --user-data-dir "/workspace/.vscode/user"
