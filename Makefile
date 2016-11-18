build: build-site

build-site:
	          rm -rf public/
	          hugo

server: hugo server

.PHONY: build build-site
