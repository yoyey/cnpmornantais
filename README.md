# Web site for the cnpmornantais association

## Dependencies

* Hugo v0.16

## Editing content

When in development, launch preview server with `make server` and connect
to http://localhost:1313.

source files are located in content directory

Theme files are located in themes cnpm.
This theme is based on this site : https://github.com/humboldtux

To build static site, run `make build`. The static site is generated into
`public/` directory.

## Important files and directories

* `config.toml`
Site global configuration file.

* `content/post/`
Main page news page

* `content/*/`
Each pages for the navigation bar
