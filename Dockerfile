FROM bash
RUN apk add --no-cache curl jq && \
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"  && \
    mv ./kubectl /bin && \
    chmod +x /bin/kubectl
