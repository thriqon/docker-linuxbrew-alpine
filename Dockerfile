
FROM alpine

RUN apk update &&\
    apk add git make clang ruby ruby-irb ncurses tar binutils build-base &&\
    git clone https://github.com/Homebrew/linuxbrew.git ~/brew &&\
    rm -f /root/.bashrc &&\
    echo 'export PATH="$HOME/brew/bin:$PATH"' > /root/.bashrc &&\
    echo 'export MANPATH="$HOME/brew/share/man:$MANPATH"' >> /root/.bashrc &&\
    echo 'export INFOPATH="$HOME/brew/share/info:$INFOPATH"' >> /root/.bashrc

ENTRYPOINT ["/root/brew/bin/brew"]
