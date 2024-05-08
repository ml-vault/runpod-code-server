if [[ -z "${GITHUB_TOKEN}" ]]; then
    $GITHUB_TOKEN >> _ghtoken.txt
    gh auth login --with-token < _ghtoken.txt
    rm _ghtoken.txt
fi