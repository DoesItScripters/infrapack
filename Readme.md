Infrapack
=========

Terraform Continuous Development using Skaffold and Kubernetes

## Quickstart
Attention! This is PoC project, not intended for production.

### Prerequesites:

Installed draft, skaffold, helm, kubernetes

Clone repository and install draft pack:
```
git clone https://github.com/odzhu/infrapack.git
cd infrapack
cd tests/ && make addpack
```
Run Packer and Terraform build and deploy against sample code using skaffold
```
make test
```
Under the hood, it will:
* Create temp dir and copy sample terraform and packer code there.
* Execure draft create and enreaching the code with helm charts
* Build and deploy.

Now you can switch to temp dir and play with terraform and packer development
```
cd /tmp/sandbox/ && skaffold dev
```