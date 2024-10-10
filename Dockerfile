FROM archlinux:latest

WORKDIR /pkgs
RUN pacman -Sy git --noconfirm 
RUN git clone https://GitHub.com/ndowens/pkgs
COPY ./.gitignore .
COPY ./entrypoint.sh .
ENTRYPOINT [ ./entrypoint.sh ]
