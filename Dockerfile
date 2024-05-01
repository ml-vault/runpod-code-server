FROM runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04
RUN curl -fsSL https://code-server.dev/install.sh | sh
COPY ./run-server.sh /run-server.sh
CMD ["sh", "/run-server.sh"]
