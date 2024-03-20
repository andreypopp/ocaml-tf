(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_reserved_ip_assignment

val digitalocean_reserved_ip_assignment :
  ?id:string prop ->
  droplet_id:float prop ->
  ip_address:string prop ->
  unit ->
  digitalocean_reserved_ip_assignment

val yojson_of_digitalocean_reserved_ip_assignment :
  digitalocean_reserved_ip_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  droplet_id:float prop ->
  ip_address:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  droplet_id:float prop ->
  ip_address:string prop ->
  string ->
  t Tf_core.resource
