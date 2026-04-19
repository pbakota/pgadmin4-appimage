FROM debian:12
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y curl ca-certificates xz-utils libfuse2 fuse python3 file wget jq binutils \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /root

