(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type networks = {
  delete_protection : bool prop;  (** delete_protection *)
  expose_routes_to_vswitch : bool prop;
      (** expose_routes_to_vswitch *)
  id : float prop;  (** id *)
  ip_range : string prop;  (** ip_range *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
}

type hcloud_networks

val hcloud_networks :
  ?id:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_networks

val yojson_of_hcloud_networks : hcloud_networks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  networks : networks list prop;
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
