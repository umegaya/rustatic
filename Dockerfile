FROM andrewd/rust-musl

ADD ./build.sh .
RUN ./build.sh

ENV OPENSSL_STATIC 1
ENV OPENSSL_LIB_DIR /usr/lib

