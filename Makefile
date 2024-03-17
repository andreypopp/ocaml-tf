GEN = dune exec ./bin/gen.exe gen-provider-ml ./providers.json

.PHONY: build fmt
build fmt:
	dune $@

.PHONY: gen
gen: \
	gen_digitialocean_provider \
	gen_aws_provider \
	gen_azurerm_provider \
	gen_google_provider \
	gen_cloudflare_provider \
	gen_kubernetes_provider \
	gen_hcloud_provider
gen_digitialocean_provider:
	$(GEN) "registry.terraform.io/digitalocean/digitalocean" ./providers/digitalocean_provider
gen_aws_provider:
	$(GEN) "registry.terraform.io/hashicorp/aws" ./providers/aws_provider
gen_azurerm_provider:
	$(GEN) "registry.terraform.io/hashicorp/azurerm" ./providers/azurerm_provider
gen_google_provider:
	$(GEN) "registry.terraform.io/hashicorp/google" ./providers/google_provider
gen_cloudflare_provider:
	$(GEN) "registry.terraform.io/cloudflare/cloudflare" ./providers/cloudflare_provider
gen_kubernetes_provider:
	$(GEN) "registry.terraform.io/hashicorp/kubernetes" ./providers/kubernetes_provider
gen_hcloud_provider:
	$(GEN) "registry.terraform.io/hetznercloud/hcloud" ./providers/hcloud_provider
