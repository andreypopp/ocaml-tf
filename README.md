# ocaml-tf

**WARNING: EXPERIMENTAL, DO NOT USE**

ocaml-tf generates OCaml bindings to terraform/opentofu providers. 

## How it works

The output of `terraform providers schema -json` is parsed and then used to
generate OCaml code that provides a type-safe interface to define Terraform resources
and datasources programmatically.

Each provider is represented by a library, each resource or datasource is
represented by a module.

For example for a resource named `digitalocean_droplet` there's a module
generated with the following signature.

First there are constructors for the resource block and for nested blocks:

```ocaml
type timeouts

val timeouts : ... -> unit -> timeouts

type digitalocean_droplet

val digitalocean_droplet : image:string prop -> ... -> unit -> digitalocean_droplet
```

Followed by the function to serialize the resource to JSON:

```ocaml
val yojson_of_digitalocean_droplet : digitalocean_droplet -> json
```

Then a type `t` is defined which represents the resource's exported attributes.

One can use values of such types to construct further resources which reference
the current resource:

```ocaml
type t = private {
  id : string prop;
  ...
}
```

To obtain a value of `t` one can use the `register` function.

The function automatically registers the resource with the global registry
which is then used to generate `.tf.json` file:

```ocaml
val register : ... string -> t
```

In case one wants to handle the registration manually, and have full control
over `.tf.json` generation, there's a more low level API:

```ocaml
val make : string -> t Tf_core.resource
```

The `'attrs Tf_core.resource` type contains the attributes of the
resource and the JSON payload to be written to the `.tf.json` file.

## Example

In this example bindings to the [DigitalOcean provider][digitalocean]
is used to construct resources which: registers a SSH key, a reserved
IP, creates a Droplet and assigns the IP to that Droplet.

In `dune`:
```dune
(executable
 (name main)
 (modules main)
 (libraries tf tf_digitalocean))
```

In `main.ml`:
```ocaml
open Tf_core.Prop
open Tf_digitalocean

let public_key =
  In_channel.(
    with_open_bin "/Users/andreypopp/.ssh/id_rsa.pub" input_all)

let region = string "fra1"

let () =
  let ssh_key =
    Digitalocean_ssh_key.register "id_rsa" ~name:(string "id_rsa")
      ~public_key:(string public_key)
  in
  let wg0_ip = Digitalocean_reserved_ip.register "wg0_ip" ~region in
  let wg0 =
    Digitalocean_droplet.register "wg0" ~name:(string "wg0") ~region
      ~image:(string "debian-12-x64")
      ~size:(string "s-1vcpu-1gb") ~ssh_keys:[ ssh_key.id ]
  in
  let _ =
    Digitalocean_reserved_ip_assignment.register "wg0_ip_assignment"
      ~droplet_id:(magic wg0.id) ~ip_address:wg0_ip.id
  in
  ()

let () = Tf_run.run ()
```

then to generate and apply the above configuration:
```
dune exec ./main.exe apply
```

The configuration will be generated in `_tf/tf.tf.json`.

## Generating bindings

In the example, we'll generate bindings to the [Terraform Vault
provider][vault-provider].  First, obtain the Vault provider schema by
creating a dummy Terraform module that depends on the Vault provider:

```shell
# Obtain the provider schema
$ echo 'provider "vault" {}' > vault.tf
$ terraform init
$ terraform providers schema -json > schema.json
```

Create a directory `tf_vault` for the bindings and then use the
ocaml-tf generator:
                   
```shell
$ mkdir tf_vault
$ dune exec bin/gen.exe -- gen-provider-ml schema.json registry.terraform.io/hashicorp/vault tf_vault
```

Add a dune file for our new library:
                                    
```shell
$ cat > tf_vault/dune << EOT
(library
 (name tf_vault)
 (public_name tf_vault)
 (flags :standard -open Ppx_yojson_conv_lib.Yojson_conv.Primitives)
 (lint
  (pps ppx_yojson_conv))
 (libraries ppx_yojson_conv_lib tf yojson))

(include_subdirs qualified)
EOT
```

We also need to generate JSON serialization functions through
`ppx_joyson_conv`, which is done as such:

```
$ dune build @tf_vault/lint --auto-promote
```

[digitalocean]: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
[vault-provider]: https://registry.terraform.io/providers/hashicorp/vault/latest/docs
