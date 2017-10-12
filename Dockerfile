FROM bash
RUN apk add --no-cache curl && \
    curl --location --output kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/linux/amd64/kubectl && \
    mv ./kubectl /bin && \
    chmod +x /bin/kubectl && \
    apk del curl