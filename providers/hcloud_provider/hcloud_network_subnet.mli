(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_network_subnet

val hcloud_network_subnet :
  ?id:string prop ->
  ?vswitch_id:float prop ->
  ip_range:string prop ->
  network_id:float prop ->
  network_zone:string prop ->
  type_:string prop ->
  string ->
  unit
