FROM gcc
ARG https_proxy
ARG http_proxy
ARG GHR_VERSION=v0.10.0
RUN set -x && \
    curl -L "https://github.com/tcnksm/ghr/releases/download/${GHR_VERSION}/ghr_${GHR_VERSION}_linux_386.tar.gz" | \
        tar xzvOf - "ghr_${GHR_VERSION}_linux_386/ghr" > /usr/bin/ghr && \
    chmod 0755 /usr/bin/ghr && \
    /usr/bin/ghr -version
