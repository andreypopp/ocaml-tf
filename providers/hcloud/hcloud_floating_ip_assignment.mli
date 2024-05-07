(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_floating_ip_assignment

val hcloud_floating_ip_assignment :
  ?id:string prop ->
  floating_ip_id:float prop ->
  server_id:float prop ->
  unit ->
  hcloud_floating_ip_assignment

val yojson_of_hcloud_floating_ip_assignment :
  hcloud_floating_ip_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  floating_ip_id : float prop;
  id : string prop;
  server_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  floating_ip_id:float prop ->
  server_id:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  floating_ip_id:float prop ->
  server_id:float prop ->
  string ->
  t Tf_core.resource
