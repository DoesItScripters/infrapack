all: clean install_vault up

install_vault:
	cd ../vault && helm install -n vault --namespace vault .

create:
	mkdir -p out/infrapack && cd out && cp -r ../testdata/* infrapack/ && \
	draft create

skaffold:
	cd out && skaffold run

test: clean purge create skaffold

clean:
	rm -rf out

purge:
	helm delete infrapack --purge ; exit 0