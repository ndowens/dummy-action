FROM cachyos/cachyos

RUN git clone https://GitHub.com/ndowens/pkgs .
WORKDIR /pkgs

ENTRYPOINT bash -c export PKGS="$(git diff HEAD~1..HEAD~2 --name-only) "
