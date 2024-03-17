(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer_target

val hcloud_load_balancer_target :
  ?id:string prop ->
  ?ip:string prop ->
  ?label_selector:string prop ->
  ?server_id:float prop ->
  ?use_private_ip:bool prop ->
  load_balancer_id:float prop ->
  type_:string prop ->
  string ->
  unit
