(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_load_balancer_network

val hcloud_load_balancer_network :
  ?enable_public_interface:bool prop ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  load_balancer_id:float prop ->
  unit ->
  hcloud_load_balancer_network

val yojson_of_hcloud_load_balancer_network :
  hcloud_load_balancer_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enable_public_interface : bool prop;
  id : string prop;
  ip : string prop;
  load_balancer_id : float prop;
  network_id : float prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_public_interface:bool prop ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  load_balancer_id:float prop ->
  string ->
  t

val make :
  ?enable_public_interface:bool prop ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  load_balancer_id:float prop ->
  string ->
  t Tf_core.resource
