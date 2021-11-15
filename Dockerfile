FROM docker.io/alpine:3.14

ENV TEXTLINT_VERSION=12.0.2
RUN apk add --no-cache nodejs npm \
    && npm install -g textlint@${TEXTLINT_VERSION} \
    && npm install -g \
       textlint-rule-preset-jtf-style \
       textlint-rule-max-ten \
       textlint-rule-no-doubled-joshi \
       textlint-rule-no-mix-dearu-desumasu \
       textlint-rule-sentence-length \
       textlint-rule-spellcheck-tech-word

ENTRYPOINT ["textlint"]
CMD ["-h"]
