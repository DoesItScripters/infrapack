testdir = /tmp/sandbox/

install_vault:
	cd ../vault && helm install -n vault --namespace vault .

addpack: 
	ln -s $$(PWD)/../packs/hcl $$(draft home)/packs/HCL

create:
	mkdir -p $(testdir)infrapack && cd $(testdir) 

copy: 
	cp -r ./testdata/* $(testdir)infrapack/

draft:
	cd $(testdir) && draft create -p hcl

skaffold:
	cd $(testdir) && git init && git add infrapack && git commit -am "initial"  && skaffold run

test: clean purge create copy draft skaffold

clean:
	rm -rf $(testdir)

purge:
	helm delete infrapack --purge ; exit 0
