(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_replica

type t = private {
  cluster_id : string prop;
  database : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_network_uuid : string prop;
  private_uri : string prop;
  region : string prop;
  size : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  uri : string prop;
  user : string prop;
  uuid : string prop;
}

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
  t
