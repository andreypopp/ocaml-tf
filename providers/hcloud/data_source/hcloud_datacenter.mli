(** Provides details about a specific Hetzner Cloud Datacenter. 

Use this resource to get detailed information about a specific datacenter.

## Example

```hcl
data hcloud_datacenter datacenter1 {
  name = fsn1-dc14
}

data hcloud_datacenter datacenter2 {
  id = 4
}
```
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_datacenter

val hcloud_datacenter :
  ?id:float prop -> ?name:string prop -> unit -> hcloud_datacenter

val yojson_of_hcloud_datacenter : hcloud_datacenter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  available_server_type_ids : float list prop;
  description : string prop;
  id : float prop;
  location : (string * string) list prop;
  name : string prop;
  supported_server_type_ids : float list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:float prop -> ?name:string prop -> string -> t Tf_core.resource
