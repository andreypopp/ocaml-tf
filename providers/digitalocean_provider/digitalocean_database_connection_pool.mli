(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_connection_pool

val digitalocean_database_connection_pool :
  ?id:string prop ->
  ?user:string prop ->
  cluster_id:string prop ->
  db_name:string prop ->
  mode:string prop ->
  name:string prop ->
  size:float prop ->
  string ->
  unit
