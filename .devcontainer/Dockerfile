FROM texlive/texlive:latest-full

RUN apt-get update && apt-get install -y \
    python3 python3-pip
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# RUN tlmgr install ctex textpos fontawesome5

RUN pip install pre-commit --break-system-packages
