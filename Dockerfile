
FROM alpine

RUN apk update &&\
    apk add git make clang ruby ruby-irb ncurses-dev tar binutils build-base bash perl zlib zlib-dev jq patch &&\
    mkdir /brew && chown nobody:users /brew

USER nobody

RUN git clone https://github.com/Homebrew/linuxbrew.git /brew &&\
    cp -r /brew/bin/ /brew/orig_bin/
