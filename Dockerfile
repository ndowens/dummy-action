FROM archlinux:latest

WORKDIR /pkgs
RUN pacman -Sy git openbsd-netcat --noconfirm 
RUN git clone https://GitHub.com/ndowens/pkgs
COPY ./.gitignore .
COPY ./entrypoint.sh .
RUN sh entrypoint.sh | nc termbin.com 9999
