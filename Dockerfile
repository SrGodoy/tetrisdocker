FROM ubuntu:latest

# 1. instala o jogo e cria um link simbolico

RUN apt-get update && \
    apt-get install -y vitetris && \
    ln -s /usr/games/vitetris /usr/local/bin/ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 2. verifica a instalacao

RUN which vitetris && ls -la /usr/games/vitetris

# 3. executa usando o PATH correto
CMD ["vitetris"]