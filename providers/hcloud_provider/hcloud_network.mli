(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_network

val hcloud_network :
  ?delete_protection:bool prop ->
  ?expose_routes_to_vswitch:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ip_range:string prop ->
  name:string prop ->
  string ->
  unit
