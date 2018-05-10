FROM gcc
ARG https_proxy
ARG http_proxy
ARG GHR_VERSION=v0.10.0
RUN set -x && \
    curl -LO "https://github.com/tcnksm/ghr/releases/download/${GHR_VERSION}/ghr_${GHR_VERSION}_linux_386.tar.gz" && \
    tar xzvOf "ghr_${GHR_VERSION}_linux_386.tar.gz" "ghr_${GHR_VERSION}_linux_386/ghr" >ghr && \
    install -o root -g root -m 0755 ghr /usr/bin/ghr && \
    rm -rf "ghr_${GHR_VERSION}_linux_386.tar.gz" "ghr_${GHR_VERSION}_linux_386"
