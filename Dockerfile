FROM runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04
RUN apt update
RUN curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o vscode.deb
RUN api install -y ./vscode.deb
COPY ./run-server.sh /run-server.sh
CMD ["sh", "/run-server.sh"]
