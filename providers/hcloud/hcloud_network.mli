(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_network

val hcloud_network :
  ?delete_protection:bool prop ->
  ?expose_routes_to_vswitch:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ip_range:string prop ->
  name:string prop ->
  unit ->
  hcloud_network

val yojson_of_hcloud_network : hcloud_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delete_protection : bool prop;
  expose_routes_to_vswitch : bool prop;
  id : string prop;
  ip_range : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delete_protection:bool prop ->
  ?expose_routes_to_vswitch:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ip_range:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?delete_protection:bool prop ->
  ?expose_routes_to_vswitch:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ip_range:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
