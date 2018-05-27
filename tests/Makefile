testdir = /tmp/out/

all: clean install_vault up

install_vault:
	cd ../vault && helm install -n vault --namespace vault .

create:
	mkdir -p $(testdir)infrapack && cd $(testdir) 
copy: 
	cp -r ./testdata/* $(testdir)infrapack/ 

draft:
	cd $(testdir) && draft create

skaffold:
	cd $(testdir) && skaffold run

jx:
	cd $(testdir) && \
    jx import --pack=hcl

test: clean purge create skaffold

clean:
	rm -rf $(testdir)

purge:
	helm delete infrapack --purge ; exit 0