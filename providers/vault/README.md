# ocaml-tf bindings for Hashicorp Vault terraform/opentofu provider

Bindings to the [Hashicorp Vault][vault] [Terraform provider][vault-provider] using [ocaml-tf][ocaml-tf].

## Installation

## Usage

## How these bindings were generated:

First, obtain the Vault provider schema by creating a dummy terraform
module that depends on the Vault provider:

```shell
# Obtain the provider schema
$ echo 'provider "vault" {}' > vault.tf
$ terraform init
$ terraform providers schema -json > schema.json
```

Then we use the ocaml-tf generator:


```
# Generate code
$ dune ocaml-tf/bin/gen.exe -- gen-provider-ml schema.json registry.terraform.io/hashicorp/vault .
```

We also need to generate JSON serialization functions through
`ppx_joyson_conv`, which is done as such:

```
$ dune build @lint --auto-promote
```

[vault]: https://developer.hashicorp.com/vault
[vault-provider]: https://registry.terraform.io/providers/hashicorp/vault/latest/docs
[ocaml-tf]: https://github.com/andreypopp/ocaml-tf/
