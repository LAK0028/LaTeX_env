FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# Nainstaluj základní nástroje a LaTeX
RUN apt-get update && apt-get install -y \
    g++ gdb git make cmake \
    texlive-full \
    texlive-lang-czechslovak \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    latexmk \
    unzip \
    && rm -rf /var/lib/apt/lists/

# Nastav výchozí formát papíru na A4
RUN texconfig-sys paper a4

WORKDIR /workspace
CMD ["/bin/bash"]