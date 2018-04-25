#COMMIT=$(shell git log --pretty=format:"%H" -n 1)
#VERSION=0.0.1
#SEMVER=$(VERSION)-$(COMMIT)

all: test up

create:
	mkdir out && cd out && cp -r ../terraform terraform && \
	draft create
up:
	cd out && draft up

clean:
	rm -rf out

purge:
	helm delete out --purge