GEN = dune exec ./bin/gen.exe gen-provider-ml ./providers.json
PKGS = $(wildcard *.opam)

.PHONY: build fmt
build fmt:
	dune $@

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
	gen_hcloud_provider
gen_digitialocean_provider:
	$(GEN) "registry.terraform.io/digitalocean/digitalocean" ./providers/digitalocean
gen_aws_provider:
	$(GEN) "registry.terraform.io/hashicorp/aws" ./providers/aws
gen_azurerm_provider:
	$(GEN) "registry.terraform.io/hashicorp/azurerm" ./providers/azurerm
gen_google_provider:
	$(GEN) "registry.terraform.io/hashicorp/google" ./providers/google
gen_cloudflare_provider:
	$(GEN) "registry.terraform.io/cloudflare/cloudflare" ./providers/cloudflare
gen_kubernetes_provider:
	$(GEN) "registry.terraform.io/hashicorp/kubernetes" ./providers/kubernetes
gen_hcloud_provider:
	$(GEN) "registry.terraform.io/hetznercloud/hcloud" ./providers/hcloud
