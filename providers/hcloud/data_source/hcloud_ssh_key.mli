(** Provides details about a specific Hetzner Cloud SSH Key.

This resource is useful if you want to use a non-terraform managed SSH Key.

## Example Usage

```hcl
data hcloud_ssh_key ssh_key_1 {
  id = 1234
}

data hcloud_ssh_key ssh_key_2 {
  name = my-ssh-key
}

data hcloud_ssh_key ssh_key_3 {
  fingerprint = 43:51:43:a1:b5:fc:8b:b7:0a:3a:a9:b1:0f:66:73:a8
}

data hcloud_ssh_key ssh_key_4 {
  with_selector = key=value
}

resource hcloud_server main {
  ssh_keys = [
    data.hcloud_ssh_key.ssh_key_1.id,
    data.hcloud_ssh_key.ssh_key_2.id,
    data.hcloud_ssh_key.ssh_key_3.id,
  ]
}
```
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_ssh_key

val hcloud_ssh_key :
  ?fingerprint:string prop ->
  ?id:float prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?public_key:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_ssh_key

val yojson_of_hcloud_ssh_key : hcloud_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fingerprint : string prop;
  id : float prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  public_key : string prop;
  selector : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?fingerprint:string prop ->
  ?id:float prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?public_key:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?fingerprint:string prop ->
  ?id:float prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?public_key:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
