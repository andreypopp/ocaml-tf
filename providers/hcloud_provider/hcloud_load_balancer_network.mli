(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer_network

val hcloud_load_balancer_network :
  ?enable_public_interface:bool prop ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  load_balancer_id:float prop ->
  string ->
  unit
