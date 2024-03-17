GEN = dune exec ./bin/gen.exe gen-provider-ml ./providers.json

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
	$(GEN) "registry.terraform.io/digitalocean/digitalocean" ./digitalocean_provider
gen_aws_provider:
	$(GEN) "registry.terraform.io/hashicorp/aws" ./aws_provider
gen_azurerm_provider:
	$(GEN) "registry.terraform.io/hashicorp/azurerm" ./azurerm_provider
gen_google_provider:
	$(GEN) "registry.terraform.io/hashicorp/google" ./google_provider
gen_cloudflare_provider:
	$(GEN) "registry.terraform.io/cloudflare/cloudflare" ./cloudflare_provider
gen_kubernetes_provider:
	$(GEN) "registry.terraform.io/hashicorp/kubernetes" ./kubernetes_provider
gen_hcloud_provider:
	$(GEN) "registry.terraform.io/hetznercloud/hcloud" ./hcloud_provider
