(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_connection_pool

type t = private {
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

val digitalocean_database_connection_pool :
  ?id:string prop ->
  ?user:string prop ->
  cluster_id:string prop ->
  db_name:string prop ->
  mode:string prop ->
  name:string prop ->
  size:float prop ->
  string ->
  t
