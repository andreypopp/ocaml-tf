(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_replica

val digitalocean_database_replica :
  ?id:string prop ->
  ?private_network_uuid:string prop ->
  ?region:string prop ->
  ?size:string prop ->
  ?storage_size_mib:string prop ->
  ?tags:string prop list ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  unit
