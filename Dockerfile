FROM python:3.11-slim

# Install required packages: git, docker, curl, wget
RUN apt-get update && apt-get install -y \
    git \
    docker.io \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*
RUN pip install trivy-py 
RUN trivy --version
RUN docker --version
RUN git --version
