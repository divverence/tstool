FROM gcc:4.9
COPY . /usr/src/tstool
WORKDIR /usr/src/tstool
RUN ./configure --prefix=/out
RUN mkdir /out
RUN make
RUN make check
RUN make install
RUN ls /out -la
