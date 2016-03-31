FROM gliderlabs/alpine:3.3

ENV TEXTLINT_VERSION=6.2.0
RUN apk add --no-cache nodejs \
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
