(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_primary_ip

val hcloud_primary_ip :
  ?assignee_id:float prop ->
  ?id:float prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_primary_ip

val yojson_of_hcloud_primary_ip : hcloud_primary_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assignee_id : float prop;
  assignee_type : string prop;
  auto_delete : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  id : float prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  type_ : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?assignee_id:float prop ->
  ?id:float prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?assignee_id:float prop ->
  ?id:float prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
