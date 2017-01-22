build: build-site

build-site:
	          rm -rf public/
	          hugo

server:
	hugo server

upload:
	./upload.sh

.PHONY: build build-site server upload
