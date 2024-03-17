(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer_network

val hcloud_load_balancer_network :
  ?enable_public_interface:bool ->
  ?network_id:float ->
  ?subnet_id:string ->
  load_balancer_id:float ->
  string ->
  unit
