FROM ubuntu:16.04

RUN sed -i".bak" -e 's/\/\/archive.ubuntu.com/\/\/ftp.jaist.ac.jp/g'  /etc/apt/sources.list
RUN apt-get update -y && \
    apt-get install -y \
      texlive \
      texlive-lang-cjk \
      texlive-fonts-recommended \
      texlive-fonts-extra \
    && rm -rf /var/lib/apt/lists/*

RUN kanji-config-updmap ipaex && kanji-config-updmap-sys ipaex

WORKDIR /tex

CMD bash
