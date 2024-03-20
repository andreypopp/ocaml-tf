(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_vpc

val digitalocean_vpc :
  ?id:string prop ->
  ?name:string prop ->
  ?region:string prop ->
  unit ->
  digitalocean_vpc

val yojson_of_digitalocean_vpc : digitalocean_vpc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_at : string prop;
  default : bool prop;
  description : string prop;
  id : string prop;
  ip_range : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
