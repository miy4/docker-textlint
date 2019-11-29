docker-textlint
==========

Docker container with textlint.  
[textlint](http://textlint.github.io/) is Node.js based text linting utility for markdown and plaintext.

### Rules

This image contains textlint rules as follows:

- [textlint-rule-preset-jtf-style](https://www.npmjs.com/package/textlint-rule-preset-jtf-style)
- [textlint-rule-max-ten](https://www.npmjs.com/package/textlint-rule-max-ten)
- [textlint-rule-no-doubled-joshi](https://www.npmjs.com/package/textlint-rule-no-doubled-joshi)
- [textlint-rule-no-mix-dearu-desumasu](https://www.npmjs.com/package/textlint-rule-no-mix-dearu-desumasu)
- [textlint-rule-sentence-length](https://www.npmjs.com/package/textlint-rule-sentence-length)
- [textlint-rule-spellcheck-tech-word](https://www.npmjs.com/package/textlint-rule-spellcheck-tech-word)

### Installation

To pull:

```sh
$ docker pull shimizukawa/textlint
```

To build:

```sh
$ git clone https://github.com/shimizukawa/docker-textlint.git
$ cd docker-textlint
$ docker build -t shimizukawa/textlint .
```

### Usage

```sh
$ vi .textlintrc
# Edit textlint configurations
```

See [textlint/docs/configuring.md](https://github.com/textlint/textlint/blob/master/docs/configuring.md) and [textlint/examples/config-file/](https://github.com/textlint/textlint/blob/master/examples/config-file) for more details.

```sh
$ docker run -v ${PWD}:/data -w /data shimizukawa/textlint <TEXTLINT_ARGS>
# or
$ /path/to/run-textlint <TEXTLINT_ARGS>
```

`docker run` and `run-textlint` accept and pass a set of parameters to [textlint CLI](https://github.com/textlint/textlint#cli).
