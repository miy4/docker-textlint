FROM docker.io/alpine:3.14

ENV TEXTLINT_VERSION=12.1.0
RUN apk add --no-cache nodejs npm \
    && npm install --global \
       textlint@${TEXTLINT_VERSION} \
       textlint-rule-preset-ja-technical-writing \
       textlint-filter-rule-comments \
       textlint-filter-rule-allowlist

ENTRYPOINT ["textlint"]
CMD ["-h"]
