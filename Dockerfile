FROM alpine

RUN apk update && apk add --no-cache dumb-init bash xz tar pigz zstd

COPY volume-backup.sh /

ENTRYPOINT [ "/usr/bin/dumb-init", "--", "/volume-backup.sh" ]
