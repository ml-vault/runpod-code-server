FROM runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04
RUN apt update
RUN curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o vscode.deb
RUN apt install -y ./vscode.deb
RUN apt install -y gh
COPY ./build_scripts /build_scripts
RUN sh /build_scripts/githubconfig.sh
RUN pip install -U datasets huggingface_hub transformers einops torchaudio accelerate librosa matplotlib tensorboard runpod
CMD ["sh", "/build_scripts/run-server.sh"]