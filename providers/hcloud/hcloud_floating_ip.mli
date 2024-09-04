(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_floating_ip

val hcloud_floating_ip :
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?home_location:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?server_id:float prop ->
  type_:string prop ->
  unit ->
  hcloud_floating_ip

val yojson_of_hcloud_floating_ip : hcloud_floating_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  server_id : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?home_location:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?server_id:float prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?home_location:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?server_id:float prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
