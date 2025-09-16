FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Add /usr/games to PATH so fortune and cowsay are found
ENV PATH="/usr/games:${PATH}"

RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/nc nc /bin/nc.openbsd 100

COPY wisecow.sh /usr/local/bin/wisecow.sh
RUN chmod +x /usr/local/bin/wisecow.sh

EXPOSE 4499

CMD ["/usr/local/bin/wisecow.sh"]
