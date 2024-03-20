(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_reserved_ip

val digitalocean_reserved_ip :
  ?id:string prop ->
  ip_address:string prop ->
  unit ->
  digitalocean_reserved_ip

val yojson_of_digitalocean_reserved_ip :
  digitalocean_reserved_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
  region : string prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ip_address:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ip_address:string prop ->
  string ->
  t Tf_core.resource
