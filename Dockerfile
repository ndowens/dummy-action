FROM cachyos/cachyos

WORKDIR /

RUN git clone https://GitHub.com/ndowens/pkgs


RUN git diff HEAD~1..HEAD~2 --name-only 
