FROM alpine:3.10.3
MAINTAINER shimizukawa <shimizukawa@gmail.com>

ENV TEXTLINT_VERSION=11.5.0
RUN apk add --no-cache nodejs nodejs-npm \
    && npm install -g textlint@${TEXTLINT_VERSION} \
    && npm install -g \
       textlint-rule-prh \
       textlint-rule-no-todo \
       textlint-rule-preset-jtf-style \
       textlint-rule-max-ten \
       textlint-rule-no-doubled-joshi \
       textlint-rule-no-mix-dearu-desumasu \
       textlint-rule-sentence-length \
       textlint-rule-spellcheck-tech-word

ENTRYPOINT ["textlint"]
CMD ["-h"]
