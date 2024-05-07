(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_network_route

val hcloud_network_route :
  ?id:string prop ->
  destination:string prop ->
  gateway:string prop ->
  network_id:float prop ->
  unit ->
  hcloud_network_route

val yojson_of_hcloud_network_route : hcloud_network_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  destination : string prop;
  gateway : string prop;
  id : string prop;
  network_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  destination:string prop ->
  gateway:string prop ->
  network_id:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  destination:string prop ->
  gateway:string prop ->
  network_id:float prop ->
  string ->
  t Tf_core.resource
