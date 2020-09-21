FROM bash
RUN apk add --no-cache curl && \
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.18.9/bin/linux/amd64/kubectl"  && \
    mv ./kubectl /bin && \
    chmod +x /bin/kubectl
