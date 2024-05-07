(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_domain

val digitalocean_domain :
  ?id:string prop -> name:string prop -> unit -> digitalocean_domain

val yojson_of_digitalocean_domain : digitalocean_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  ttl : float prop;
  urn : string prop;
  zone_file : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
