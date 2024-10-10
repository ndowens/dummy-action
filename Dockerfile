FROM cachyos/cachyos

WORKDIR /

RUN git clone https://GitHub.com/ndowens/pkgs


CMD ["bash", "-c", "export PKGS=\"$(git diff HEAD~1..HEAD~2 --name-only)\" "]
