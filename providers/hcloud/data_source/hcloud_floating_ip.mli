(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_floating_ip

val hcloud_floating_ip :
  ?id:float prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_floating_ip

val yojson_of_hcloud_floating_ip : hcloud_floating_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : float prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  selector : string prop;
  server_id : float prop;
  type_ : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:float prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
