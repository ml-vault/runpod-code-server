# runpod-code-server

Easily run vscode on browser.

Every configurations (e.g. extensions) are set in volume path `/workspace`

No configurations needed, just run GPU pods and connect from HTTP service.

VSCode is served with port 8000

### Github login
If you provide `GITHUB_TOKEN` to env var, automatically sets up git with your github account

## Includings

Extends `runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04` image

### VSCode Extensions
Nothing. Install from vscode

### Python packages
- datasets 
- huggingface_hub
- transformers
- einops 
- torchaudio 
- accelerate 
- librosa 
- matplotlib 
- tensorboard 
- runpod

Powered by [VSCode-server](https://code.visualstudio.com/docs/remote/vscode-server)

[Runpod template](https://runpod.io/console/deploy?template=9lvkpfvxus&ref=i6coom6h)
