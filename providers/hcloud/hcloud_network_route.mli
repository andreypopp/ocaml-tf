(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_network_route

type t = private {
  destination : string prop;
  gateway : string prop;
  id : string prop;
  network_id : float prop;
}

val hcloud_network_route :
  ?id:string prop ->
  destination:string prop ->
  gateway:string prop ->
  network_id:float prop ->
  string ->
  t
