# IPFS and HTTPs archives of XKCD

* ipns://xkcd.suzanne.soy
* https://xkcd.suzanne.soy

The latest hash can also be found in the GitHub sidebar.

This archive should be automatically updated daily.

# xkcd-archiver

> A cloner of the [XKCD](https://xkcd.com/) comics for archiving purposes.

Forked from https://github.com/hacdias/xkcd-archiver

## Install

```
go install go.hacdias.com/xkcd-archiver@latest
```

## Usage

```
Usage:
  xkcd-archiver output [flags]

Flags:
      --empty       empty output directory
  -f, --from uint   first comic to download (default 1)
  -h, --help        help for xkcd-archiver
      --skip-html   do not generate HTML files
  -t, --to uint     last comic to download
```

## Contributing

Feel free to open an issue or a pull request.

## License

[MIT License](LICENSE) © [Henrique Dias](https://hacdias.com)
