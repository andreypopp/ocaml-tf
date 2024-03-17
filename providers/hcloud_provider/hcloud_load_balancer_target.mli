(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer_target

val hcloud_load_balancer_target :
  ?id:string ->
  ?ip:string ->
  ?label_selector:string ->
  ?server_id:float ->
  ?use_private_ip:bool ->
  load_balancer_id:float ->
  type_:string ->
  string ->
  unit
