(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type maintenance_window = {
  day : string prop;  (** day *)
  hour : string prop;  (** hour *)
}

type digitalocean_database_cluster

val digitalocean_database_cluster :
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  unit ->
  digitalocean_database_cluster

val yojson_of_digitalocean_database_cluster :
  digitalocean_database_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  database : string prop;
  engine : string prop;
  host : string prop;
  id : string prop;
  maintenance_window : maintenance_window list prop;
  name : string prop;
  node_count : float prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_network_uuid : string prop;
  private_uri : string prop;
  project_id : string prop;
  region : string prop;
  size : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  uri : string prop;
  urn : string prop;
  user : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
