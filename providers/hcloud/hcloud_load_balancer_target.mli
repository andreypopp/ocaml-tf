(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_load_balancer_target

val hcloud_load_balancer_target :
  ?id:string prop ->
  ?ip:string prop ->
  ?label_selector:string prop ->
  ?server_id:float prop ->
  ?use_private_ip:bool prop ->
  load_balancer_id:float prop ->
  type_:string prop ->
  unit ->
  hcloud_load_balancer_target

val yojson_of_hcloud_load_balancer_target :
  hcloud_load_balancer_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ip : string prop;
  label_selector : string prop;
  load_balancer_id : float prop;
  server_id : float prop;
  type_ : string prop;
  use_private_ip : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip:string prop ->
  ?label_selector:string prop ->
  ?server_id:float prop ->
  ?use_private_ip:bool prop ->
  load_balancer_id:float prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ip:string prop ->
  ?label_selector:string prop ->
  ?server_id:float prop ->
  ?use_private_ip:bool prop ->
  load_balancer_id:float prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
