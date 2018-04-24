#COMMIT=$(shell git log --pretty=format:"%H" -n 1)
#VERSION=0.0.1
#SEMVER=$(VERSION)-$(COMMIT)

all: test

test:
	mkdir out && cd out && cp -r ../terraform terraform && \
	draft create -p infra && \
	draft up

clean:
	rm -rf out