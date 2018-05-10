all: clean purge install_infrapack create

install_infrapack:
	cd ../infrapack && helm install -n infrapack .

create:
	mkdir out && cd out && cp -r ../terraform terraform && \
	draft create
up:
	cd out && draft up

clean:
	rm -rf out

purge:
	helm delete infrapack --purge ; \
	helm delete out --purge ; exit 0