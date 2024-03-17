(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer__algorithm
type hcloud_load_balancer__target
type hcloud_load_balancer

val hcloud_load_balancer :
  ?delete_protection:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?network_zone:string ->
  load_balancer_type:string ->
  name:string ->
  algorithm:hcloud_load_balancer__algorithm list ->
  target:hcloud_load_balancer__target list ->
  string ->
  unit
