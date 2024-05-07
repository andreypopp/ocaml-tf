(** Provides a list of available Hetzner Cloud Datacenters.

This resource may be useful to create highly available infrastructure, distributed across several datacenters.

## Example

```hcl
data hcloud_datacenters datacenters {}

resource hcloud_server workers {
  count = 5

  name        = node${count.index}
  image       = debian-11
  server_type = cx31
  datacenter  = element(data.hcloud_datacenters.datacenters.datacenters, count.index).name
}
```
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_datacenters

val hcloud_datacenters :
  ?datacenter_ids:string prop list ->
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?names:string prop list ->
  unit ->
  hcloud_datacenters

val yojson_of_hcloud_datacenters : hcloud_datacenters -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  datacenter_ids : string list prop;
  datacenters : json prop;
  descriptions : string list prop;
  id : string prop;
  names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?datacenter_ids:string prop list ->
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?names:string prop list ->
  string ->
  t

val make :
  ?datacenter_ids:string prop list ->
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?names:string prop list ->
  string ->
  t Tf_core.resource
