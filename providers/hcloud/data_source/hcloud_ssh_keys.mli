(** Provides details about Hetzner Cloud SSH Keys.

This resource is useful if you want to use a non-terraform managed SSH Key.

## Example Usage

```hcl
data hcloud_ssh_keys all_ssh_keys {}

data hcloud_ssh_keys ssh_keys_by_label_selector {
  with_selector = foo=bar
}

resource hcloud_server main {
  ssh_keys = data.hcloud_ssh_keys.all_ssh_keys.ssh_keys.*.name
}
```
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_ssh_keys

val hcloud_ssh_keys :
  ?id:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_ssh_keys

val yojson_of_hcloud_ssh_keys : hcloud_ssh_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ssh_keys : json prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
