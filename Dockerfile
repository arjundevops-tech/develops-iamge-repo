FROM python:3.11-slim

# Install system dependencies: git, docker, curl, wget, build tools, python headers
RUN apt-get update && apt-get install -y \
    git \
    docker.io \
    curl \
    wget \
    build-essential \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Python tools
RUN pip install --upgrade pip
RUN pip install trivy-py 

# Check tools
RUN trivy --version
RUN docker --version
