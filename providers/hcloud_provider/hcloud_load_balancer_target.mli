(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer_target

val hcloud_load_balancer_target :
  ?ip:string ->
  ?label_selector:string ->
  ?server_id:float ->
  load_balancer_id:float ->
  type_:string ->
  string ->
  unit
