docker-textlint
==========

Docker container with textlint.  
[textlint](http://textlint.github.io/) is Node.js based text linting utility for markdown and plaintext.

### Rules

This image contains textlint rules as follows:

- [textlint-rule-preset-ja-technical-writing](https://github.com/textlint-ja/textlint-rule-preset-ja-technical-writing/)
- [textlint-filter-rule-comments](https://github.com/textlint/textlint-filter-rule-comments)
- [textlint-filter-rule-allowlist](https://github.com/textlint/textlint-filter-rule-allowlist)

### Installation

Pull from the GitHub Packages:

```sh
$ docker pull ghcr.io/miy4/textlint
```

Build from source:

```sh
$ git clone https://github.com/miy4/docker-textlint.git
$ cd docker-textlint
$ docker build -t miy4/textlint .
```

### Usage

```sh
$ vi .textlintrc
# Edit textlint configurations
```

See [textlint/docs/configuring.md](https://github.com/textlint/textlint/blob/master/docs/configuring.md) and [textlint/examples/config-file/](https://github.com/textlint/textlint/blob/master/examples/config-file) for more details.

```sh
$ docker run -v ${PWD}:/data -w /data miy4/textlint <TEXTLINT_ARGS>
# or
$ /path/to/run-textlint <TEXTLINT_ARGS>
```

`docker run` and `run-textlint` accept and pass a set of parameters to [textlint CLI](https://github.com/textlint/textlint#cli).

### License

MIT

