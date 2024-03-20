(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backup_restore

val backup_restore :
  ?backup_created_at:string prop ->
  database_name:string prop ->
  unit ->
  backup_restore

type maintenance_window

val maintenance_window :
  day:string prop -> hour:string prop -> unit -> maintenance_window

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type digitalocean_database_cluster

val digitalocean_database_cluster :
  ?eviction_policy:string prop ->
  ?id:string prop ->
  ?private_network_uuid:string prop ->
  ?project_id:string prop ->
  ?sql_mode:string prop ->
  ?storage_size_mib:string prop ->
  ?tags:string prop list ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  engine:string prop ->
  name:string prop ->
  node_count:float prop ->
  region:string prop ->
  size:string prop ->
  backup_restore:backup_restore list ->
  maintenance_window:maintenance_window list ->
  unit ->
  digitalocean_database_cluster

val yojson_of_digitalocean_database_cluster :
  digitalocean_database_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  database : string prop;
  engine : string prop;
  eviction_policy : string prop;
  host : string prop;
  id : string prop;
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
  sql_mode : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  uri : string prop;
  urn : string prop;
  user : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?eviction_policy:string prop ->
  ?id:string prop ->
  ?private_network_uuid:string prop ->
  ?project_id:string prop ->
  ?sql_mode:string prop ->
  ?storage_size_mib:string prop ->
  ?tags:string prop list ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  engine:string prop ->
  name:string prop ->
  node_count:float prop ->
  region:string prop ->
  size:string prop ->
  backup_restore:backup_restore list ->
  maintenance_window:maintenance_window list ->
  string ->
  t

val make :
  ?eviction_policy:string prop ->
  ?id:string prop ->
  ?private_network_uuid:string prop ->
  ?project_id:string prop ->
  ?sql_mode:string prop ->
  ?storage_size_mib:string prop ->
  ?tags:string prop list ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  engine:string prop ->
  name:string prop ->
  node_count:float prop ->
  region:string prop ->
  size:string prop ->
  backup_restore:backup_restore list ->
  maintenance_window:maintenance_window list ->
  string ->
  t Tf_core.resource
