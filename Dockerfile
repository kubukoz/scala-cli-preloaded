FROM alpine:3.14.2

RUN \
  wget -q -O scala-cli.gz https://github.com/VirtusLab/scala-cli/releases/download/v0.0.7/scala-cli-x86_64-pc-linux-static.gz && gunzip scala-cli.gz && \
  chmod +x scala-cli && \
  mv scala-cli /usr/bin/
RUN \
  echo '42' | scala-cli compile - --scala 2.12.14 && \
  echo '42' | scala-cli compile - --scala 2.13.6 && \
  echo '42' | scala-cli compile - --scala 3.1.0

ENTRYPOINT [ "scala-cli" ]

