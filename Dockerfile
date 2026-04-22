FROM golang:alpine

ARG GLOW_VERSION
RUN test -n "$GLOW_VERSION"

RUN apk add --no-cache git
WORKDIR /src
RUN git clone --depth 1 --branch "$GLOW_VERSION" https://github.com/charmbracelet/glow.git . \
    && CGO_ENABLED=0 go build -trimpath -ldflags "-s -w" -o /usr/local/bin/glow . \
    && rm -rf /src /root/.cache/go-build /go/pkg

ENTRYPOINT ["glow"]
