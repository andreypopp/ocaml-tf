(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_database_connection_pool

val digitalocean_database_connection_pool :
  ?id:string prop ->
  ?user:string prop ->
  cluster_id:string prop ->
  db_name:string prop ->
  mode:string prop ->
  name:string prop ->
  size:float prop ->
  unit ->
  digitalocean_database_connection_pool

val yojson_of_digitalocean_database_connection_pool :
  digitalocean_database_connection_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_id : string prop;
  db_name : string prop;
  host : string prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_uri : string prop;
  size : float prop;
  uri : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?user:string prop ->
  cluster_id:string prop ->
  db_name:string prop ->
  mode:string prop ->
  name:string prop ->
  size:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?user:string prop ->
  cluster_id:string prop ->
  db_name:string prop ->
  mode:string prop ->
  name:string prop ->
  size:float prop ->
  string ->
  t Tf_core.resource
