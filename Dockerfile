
FROM alpine

RUN apk update &&\
    apk add git make clang ruby ruby-irb ncurses tar binutils build-base bash perl zlib zlib-dev &&\
    git clone -b 612-permissions-of-shared-libraries https://github.com/thriqon/linuxbrew.git ~/brew &&\
    rm -f /root/.bashrc &&\
    echo 'export PATH="$HOME/brew/bin:$PATH"' > /root/.bashrc &&\
    echo 'export MANPATH="$HOME/brew/share/man:$MANPATH"' >> /root/.bashrc &&\
    echo 'export INFOPATH="$HOME/brew/share/info:$INFOPATH"' >> /root/.bashrc &&\
    cp -r $HOME/brew/bin/ $HOME/brew/orig_bin/

ENTRYPOINT ["/root/brew/bin/brew"]
