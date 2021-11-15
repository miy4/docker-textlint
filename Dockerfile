FROM docker.io/alpine:3.14

ENV TEXTLINT_VERSION=12.0.2
RUN apk add --no-cache nodejs npm \
    && npm install --global textlint@${TEXTLINT_VERSION} \
    && npm install --global textlint-rule-preset-ja-technical-writing

ENTRYPOINT ["textlint"]
CMD ["-h"]
