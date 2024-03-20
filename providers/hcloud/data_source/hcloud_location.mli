(** Provides details about a specific Hetzner Cloud Location.

Use this resource to get detailed information about a specific location.

## Example

```hcl
data hcloud_location location1 {
  name = fsn1
}

data hcloud_location location2 {
  id = 1
}
```
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_location

val hcloud_location :
  ?id:float prop -> ?name:string prop -> unit -> hcloud_location

val yojson_of_hcloud_location : hcloud_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  city : string prop;
  country : string prop;
  description : string prop;
  id : float prop;
  latitude : float prop;
  longitude : float prop;
  name : string prop;
  network_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:float prop -> ?name:string prop -> string -> t Tf_core.resource
