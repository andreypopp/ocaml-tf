(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_database_db

val digitalocean_database_db :
  ?id:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  unit ->
  digitalocean_database_db

val yojson_of_digitalocean_database_db :
  digitalocean_database_db -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
