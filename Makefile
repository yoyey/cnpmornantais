build: build-site

build-site:
	          rm -rf public/
	          hugo -v

server:
	hugo server

upload:
	./upload.sh

.PHONY: build build-site server upload
