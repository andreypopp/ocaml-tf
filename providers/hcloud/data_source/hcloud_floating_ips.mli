(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type floating_ips = {
  delete_protection : bool prop;  (** delete_protection *)
  description : string prop;  (** description *)
  home_location : string prop;  (** home_location *)
  id : float prop;  (** id *)
  ip_address : string prop;  (** ip_address *)
  ip_network : string prop;  (** ip_network *)
  labels : string prop Tf_core.assoc;  (** labels *)
  name : string prop;  (** name *)
  server_id : float prop;  (** server_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type hcloud_floating_ips

val hcloud_floating_ips :
  ?id:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_floating_ips

val yojson_of_hcloud_floating_ips : hcloud_floating_ips -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  floating_ips : floating_ips list prop;
  id : string prop;
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
