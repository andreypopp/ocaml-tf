# ocaml-terraform

**WARNING: EXPERIMENTAL, DO NOT USE**

## example

dune:
```
(executable
 (name main)
 (modules main)
 (libraries tf tf.digitalocean))
```

main.ml
```ocaml
open Tf.Prelude.Prop
open Tf_digitalocean
open Tf_digitalocean.Digitalocean_droplet
open Tf_digitalocean.Digitalocean_reserved_ip
open Tf_digitalocean.Digitalocean_reserved_ip_assignment
open Tf_digitalocean.Digitalocean_ssh_key

let public_key =
  In_channel.(
    with_open_bin "/Users/andreypopp/.ssh/id_rsa.pub" input_all)

let region = string "fra1"

let () =
  let ssh_key =
    digitalocean_ssh_key "id_rsa" ~name:(string "id_rsa")
      ~public_key:(string public_key)
  in
  let wg0_ip = digitalocean_reserved_ip "wg0_ip" ~region in
  let wg0 =
    digitalocean_droplet "wg0" ~name:(string "wg0") ~region
      ~image:(string "debian-12-x64")
      ~size:(string "s-1vcpu-1gb") ~ssh_keys:[ ssh_key.id ]
  in
  let _ =
    digitalocean_reserved_ip_assignment "wg0_ip_assignment"
      ~droplet_id:(magic wg0.id) ~ip_address:wg0_ip.id
  in
  ()

let () = Tf.Run.run ()
```

then:
```
dune exec ./main.exe apply
```
