(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_certificate

val digitalocean_certificate :
  ?id:string prop ->
  name:string prop ->
  unit ->
  digitalocean_certificate

val yojson_of_digitalocean_certificate :
  digitalocean_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domains : string list prop;
  id : string prop;
  name : string prop;
  not_after : string prop;
  sha1_fingerprint : string prop;
  state : string prop;
  type_ : string prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
