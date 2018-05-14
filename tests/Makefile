all: clean purge install_vault create

install_vault:
	cd ../vault && helm install -n vault --namespace vault .

create:
	mkdir -p out/infrapack && cd out && cp -r ../testdata/* infrapack/ && \
	draft create
up:
	cd out && draft up

clean:
	rm -rf out

purge:
	helm delete out --purge ; exit 0