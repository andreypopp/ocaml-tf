(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_cluster__backup_restore
type digitalocean_database_cluster__maintenance_window
type digitalocean_database_cluster__timeouts
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
  unit
