FROM texlive/texlive:latest-full

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update && apt-get --no-install-recommends install -y ca-certificates && \
    find /etc/apt -type f -name "*.sources" | xargs -I{} sed -i 's|http://|https://|g' {} && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get --no-install-recommends install -y \
        pipx curl

RUN pipx install pre-commit

RUN --mount=type=cache,target=/tmp \
    curl -sSf https://starship.rs/install.sh | sh -s -- -y

RUN tee -a /etc/bash.bashrc <<"EOF"
eval "$(starship init bash)"
EOF
