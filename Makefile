GEN = dune exec ./bin/gen.exe gen-provider-ml ./providers.json
PKGS = $(wildcard *.opam)

.PHONY: build fmt
build fmt:
	dune $@

.PHONY: test
test:
	dune runtest

.PHONY: ci-build
ci-build:
	dune build -p $(shell echo $(PKGS:%.opam=%) | tr ' ' ',')

.PHONY: gen
gen: gen0
	dune build @lint --auto-promote

.PHONY: gen0
gen0: \
	gen_digitialocean_provider \
	gen_aws_provider \
	gen_azurerm_provider \
	gen_google_provider \
	gen_cloudflare_provider \
	gen_kubernetes_provider \
	gen_hcloud_provider \
	gen_github_provider \
	gen_dnsimple_provider
gen_digitialocean_provider:
	rm -f ./providers/digitalocean/*.{ml,mli}
	rm -f ./providers/digitalocean/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/digitalocean/digitalocean" ./providers/digitalocean
gen_aws_provider:
	rm -f ./providers/aws/*.{ml,mli}
	rm -f ./providers/aws/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/hashicorp/aws" ./providers/aws
gen_azurerm_provider:
	rm -f ./providers/azurerm/*.{ml,mli}
	rm -f ./providers/azurerm/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/hashicorp/azurerm" ./providers/azurerm
gen_google_provider:
	rm -f ./providers/google/*.{ml,mli}
	rm -f ./providers/google/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/hashicorp/google" ./providers/google
gen_cloudflare_provider:
	rm -f ./providers/cloudflare/*.{ml,mli}
	rm -f ./providers/cloudflare/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/cloudflare/cloudflare" ./providers/cloudflare
gen_kubernetes_provider:
	rm -f ./providers/kubernetes/*.{ml,mli}
	rm -f ./providers/kubernetes/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/hashicorp/kubernetes" ./providers/kubernetes
gen_hcloud_provider:
	rm -f ./providers/hcloud/*.{ml,mli}
	rm -f ./providers/hcloud/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/hetznercloud/hcloud" ./providers/hcloud
gen_github_provider:
	rm -f ./providers/github/*.{ml,mli}
	rm -f ./providers/github/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/integrations/github" ./providers/github
gen_okta_provider:
	rm -f ./providers/okta/*.{ml,mli}
	rm -f ./providers/okta/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/okta/okta" ./providers/okta
gen_dnsimple_provider:
	rm -f ./providers/dnsimple/*.{ml,mli}
	rm -f ./providers/dnsimple/data_source/*.{ml,mli}
	$(GEN) "registry.terraform.io/dnsimple/dnsimple" ./providers/dnsimple

providers.json: .terraform.lock.hcl
	terraform providers schema -json | jq -S . > $(@)
