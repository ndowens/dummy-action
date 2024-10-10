FROM archlinux:latest

WORKDIR /pkgs
RUN pacman -Sy git --noconfirm 
RUN git clone https://GitHub.com/ndowens/pkgs

CMD bash -c export PKGS="$(git diff HEAD~1..HEAD~2 --name-only)"
