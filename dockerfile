FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
    nmap \
    nmap-scripts \
    libxslt

ADD https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl /tmp/
ADD https://raw.githubusercontent.com/vulnersCom/nmap-vulners/master/vulners.nse /usr/share/nmap/scripts/

RUN cp /tmp/nmap-bootstrap.xsl /usr/share/nmap/nmap.xsl

COPY scan.sh /tmp/scan.sh

WORKDIR /data
