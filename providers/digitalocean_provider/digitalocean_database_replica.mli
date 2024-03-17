(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_replica

val digitalocean_database_replica :
  ?id:string ->
  ?private_network_uuid:string ->
  ?region:string ->
  ?size:string ->
  ?storage_size_mib:string ->
  ?tags:string list ->
  cluster_id:string ->
  name:string ->
  string ->
  unit
