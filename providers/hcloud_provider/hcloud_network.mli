(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_network

val hcloud_network :
  ?delete_protection:bool ->
  ?expose_routes_to_vswitch:bool ->
  ?labels:(string * string) list ->
  ip_range:string ->
  name:string ->
  string ->
  unit
