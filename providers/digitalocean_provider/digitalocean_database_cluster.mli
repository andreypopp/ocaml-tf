(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_cluster__backup_restore
type digitalocean_database_cluster__maintenance_window
type digitalocean_database_cluster__timeouts
type digitalocean_database_cluster

val digitalocean_database_cluster :
  ?eviction_policy:string ->
  ?id:string ->
  ?private_network_uuid:string ->
  ?project_id:string ->
  ?sql_mode:string ->
  ?storage_size_mib:string ->
  ?tags:string list ->
  ?version:string ->
  ?timeouts:digitalocean_database_cluster__timeouts ->
  engine:string ->
  name:string ->
  node_count:float ->
  region:string ->
  size:string ->
  backup_restore:digitalocean_database_cluster__backup_restore list ->
  maintenance_window:
    digitalocean_database_cluster__maintenance_window list ->
  string ->
  unit
