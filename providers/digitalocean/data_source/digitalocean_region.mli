(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_region

val digitalocean_region :
  ?id:string prop -> slug:string prop -> unit -> digitalocean_region

val yojson_of_digitalocean_region : digitalocean_region -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  available : bool prop;
  features : string list prop;
  id : string prop;
  name : string prop;
  sizes : string list prop;
  slug : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  slug:string prop ->
  string ->
  t

val make :
  ?id:string prop -> slug:string prop -> string -> t Tf_core.resource
