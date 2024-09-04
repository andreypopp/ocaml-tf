(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_primary_ip

val hcloud_primary_ip :
  ?assignee_id:float prop ->
  ?datacenter:string prop ->
  ?delete_protection:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  assignee_type:string prop ->
  auto_delete:bool prop ->
  type_:string prop ->
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
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?assignee_id:float prop ->
  ?datacenter:string prop ->
  ?delete_protection:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  assignee_type:string prop ->
  auto_delete:bool prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?assignee_id:float prop ->
  ?datacenter:string prop ->
  ?delete_protection:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  assignee_type:string prop ->
  auto_delete:bool prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
