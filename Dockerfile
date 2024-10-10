FROM cachyos/cachyos

WORKDIR /

RUN git clone https://GitHub.com/ndowens/pkgs
RUN rm -rf .github 
RUN git add .
RUN git commit -m "rm GitHub dir"

CMD ["bash", "-c", "export PKGS=\"$(git diff HEAD~1..HEAD~2 --name-only)\" "]
