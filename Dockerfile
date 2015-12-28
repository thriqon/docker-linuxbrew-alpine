
FROM alpine

RUN apk update &&\
    apk add git make clang ruby ruby-irb ncurses tar binutils build-base bash perl zlib zlib-dev jq &&\
    mkdir /brew && chown nobody:users /brew

USER nobody

RUN git clone -b 612-permissions-of-shared-libraries https://github.com/thriqon/linuxbrew.git /brew &&\
    cp -r /brew/bin/ /brew/orig_bin/
