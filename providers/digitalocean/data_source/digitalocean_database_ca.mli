(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_database_ca

val digitalocean_database_ca :
  ?id:string prop ->
  cluster_id:string prop ->
  unit ->
  digitalocean_database_ca

val yojson_of_digitalocean_database_ca :
  digitalocean_database_ca -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  cluster_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_id:string prop ->
  string ->
  t Tf_core.resource
