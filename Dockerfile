FROM cachyos/cachyos

WORKDIR /

RUN git clone https://GitHub.com/ndowens/pkgs
CMD [ "cd", "/pkgs" ]
CMD [ "rm", "-rf .github"] 
CMD [ "git", " add ."]
CMD [ "git", "commit -m \"rm GitHub dir\""]

CMD ["bash", "-c", "export PKGS=\"$(git diff HEAD~1..HEAD~2 --name-only)\" "]
