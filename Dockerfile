FROM alpine:3.20.1

ADD --chmod=755 https://github.com/fpco/health-check/releases/download/v0.4.0/health-check-x86_64-unknown-linux-musl /usr/bin/health-check

RUN apk --no-cache add aws-cli bash

COPY --chmod=755 ./run.sh /usr/bin

ENTRYPOINT [ "/usr/bin/health-check" ]

CMD [ "--app-description", "Bucket cleaner", "--app-version", "v0.1", "--notification-context", "Test infrastructure", "--task-output-timeout", "259200", "--can-exit",  "/usr/bin/run.sh" ]
