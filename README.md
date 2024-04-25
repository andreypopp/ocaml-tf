# ocaml-tf

**WARNING: EXPERIMENTAL, DO NOT USE**

## how it works

The output of `terraform providers schema -json` is parsed and then used to
generate OCaml code that provides a type-safe interface to define tf resources
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
over `.tf.json` generation, there's a more low level api:

```ocaml
val make : string -> t Tf_core.resource
```

The `'attrs Tf_core.resource` type is a type contains attributes of the
resource and the JSON payload to be written to the `.tf.json` file.

## example

dune:
```
(executable
 (name main)
 (modules main)
 (libraries tf tf_digitalocean))
```

main.ml
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

then:
```
dune exec ./main.exe apply
```
