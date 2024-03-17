(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_cluster__backup_restore
type digitalocean_database_cluster__maintenance_window
type digitalocean_database_cluster__timeouts
type digitalocean_database_cluster

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

val digitalocean_database_cluster :
  ?eviction_policy:string prop ->
  ?id:string prop ->
  ?private_network_uuid:string prop ->
  ?project_id:string prop ->
  ?sql_mode:string prop ->
  ?storage_size_mib:string prop ->
  ?tags:string prop list ->
  ?version:string prop ->
  ?timeouts:digitalocean_database_cluster__timeouts ->
  engine:string prop ->
  name:string prop ->
  node_count:float prop ->
  region:string prop ->
  size:string prop ->
  backup_restore:digitalocean_database_cluster__backup_restore list ->
  maintenance_window:
    digitalocean_database_cluster__maintenance_window list ->
  string ->
  t
